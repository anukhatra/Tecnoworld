<?php
// Let's make impossible - do TinyMCE textarea required
add_action('the_editor', 'DUP_PRO_TinyMCE_Editor_Brand_Required');
if ( ! function_exists( 'DUP_PRO_TinyMCE_Editor_Brand_Required' ) ){
    function DUP_PRO_TinyMCE_Editor_Brand_Required($editorMarkup)
    {
        if (stripos($editorMarkup, 'required') !== false) {
            $editorMarkup = str_replace('<textarea', '<textarea required="true"', $editorMarkup);
        }
        return $editorMarkup;
    }
}

/* @var $brand DUP_PRO_Brand_Entity */
$was_updated = false;

//Set proper ID
$_REQUEST['id']		= isset($_REQUEST['id']) ? ( $_REQUEST['id'] > 0 ? DUP_PRO_U::valType($_REQUEST['id']) : 0 ) : 0;
//check_admin_referer($nonce_action);
$_REQUEST['action'] = isset($_REQUEST['action']) ? $_REQUEST['action'] : 'new';


// When is brand pharam setup to default
if(isset($_REQUEST['brand']) && $_REQUEST['brand'] == 'default')
    $_REQUEST['action'] = 'default';

// When ID is wrong
if($_REQUEST['id'] <= 0 && !in_array($_REQUEST['action'], array('new','edit','save'), true))
    $_REQUEST['action'] = 'default';


$is_freelancer_plus = (DUP_PRO_License_U::getLicenseType() >= 2);
$activate_link = sprintf('<small><a href="%s" style="color:orangered;">[ %s ]</a></small>', get_admin_url(null, "admin.php?page=duplicator-pro-settings&tab=package&sub=brand&made_active=true&id=-2" ),DUP_PRO_U::__('Set Active'));

switch ($_REQUEST['action']) {

	case 'new':
		$brand = new DUP_PRO_Brand_Entity();
		$brand->name = DUP_PRO_U::__('New Brand');
		break;

	case 'default':
		$brand = DUP_PRO_Brand_Entity::get_default_brand();

        $is_default_active = true;
        $brands = DUP_PRO_Brand_Entity::get_all();
        foreach ($brands as $x=>$b){
            if($x === 0 || !$b->active) continue;
            $is_default_active = false;
        }
		break;

	case 'edit':
		$brand = DUP_PRO_Brand_Entity::get_by_id($_REQUEST['id']);

        // Redirect to new brand if wrong ID is provided
        if(isset($brand->id)){} else
        {
            $redirect_url = get_admin_url(null, "admin.php?page=duplicator-pro-settings&tab=package&sub=brand&view=edit&action=new" );
            exit('
                <h1>' . DUP_PRO_U::__('This brand is not found or deleted. Please create new one.') . '</h1>
                <meta http-equiv="refresh" content="0; url='.$redirect_url.'">
                <script type="text/javascript">
                    window.location.href = "'.$redirect_url.'"
                </script>
            ');
        }
		break;

	case 'save':
		$was_updated	 = true;
		$brand			 = new DUP_PRO_Brand_Entity();
		$brand->id      = DUP_PRO_U::setVal($_POST['id'], '-1');
        $brand->name	 = DUP_PRO_U::setVal($_POST['name'], 'New Brand');
        $brand->active	 = DUP_PRO_U::isEmpty((isset($_POST['active']) ? true : false), false);
        $brand->attachments( DUP_PRO_U::isEmpty((isset($_POST['attachments']) ? $_POST['attachments'] : array()), array()) );
		$brand->notes	 = DUP_PRO_U::setVal($_POST['notes'], '');
		$brand->logo	 = stripcslashes(DUP_PRO_U::setVal($_POST['logo'], ''));
		$brand->save();
		break;
}
// DEBUG
//echo '<pre>',print_r($_POST),'</pre><hr>';
//$a = DUP_PRO_Brand_Entity::get_active();
//echo '<pre>',print_r($a),'</pre><hr>';
?>

<style>
    #dup-storage-form input[type="text"], input[type="password"] { width: 250px;}
	#dup-storage-form input#name {width:100%; max-width: 500px}
	#dup-storage-form input#_local_storage_folder {width:100% !important; max-width: 500px}
	td.dpro-sub-title {padding:0; margin: 0}
	td.dpro-sub-title b{padding:20px 0; margin: 0; display:block; font-size:1.25em;}
	input#max_default_store_files {width:50px !important}
	form#dpro-package-brand-form {padding: 0}
	form#dpro-package-brand-form input[type="text"] { width:350px;}
	form#dpro-package-brand-form .readonly {background:transparent; border:none;}
	textarea#brand-notes {width:350px;}
	textarea#brand-logo {width:600px; height:120px; font-size: 12px}
	textarea#brand-default-logo {width:600px;; height:50px; font-size: 12px}
	div.style-guide-link {text-align: right; width: 100%; display: inline-block; margin:0 0 5px 0}
	table.form-table {width:800px}
	div.dpro-dlg-alert-txt {line-height: 20px; font-size: 14px !important}

	div.preview-area {border:2px dashed #CDCDCD; width:95%; height:175px; background:#fff; font-family: Verdana,Arial,sans-serif;}
	div.preview-box {border:1px solid #CDCDCD; border-radius: 5px; width: 750px; margin: 10px auto 0 auto; height:130px; border-bottom: 1px dashed #999}
	div.preview-header {height:45px; background: #F1F1F1; box-shadow: 0 5px 3px -3px #999;}
	div.preview-title {font-size:26px; padding:10px 0 7px 15px; font-weight: bold;  min-height:30px}
	div.preview-content {padding:8px 15px 0 15px; clear:both}
	div.preview-version {white-space:nowrap; color:#777; font-size:11px; font-style:italic; text-align:right; padding:0 15px 5px 0; line-height: 14px; font-weight:normal; float:right}
	div.preview-version a {color:#999}
	div.preview-mode {text-align: right; color:#999; font-style: italic; font-size: 12px}
	div.preview-steps {font-size: 22px;  padding: 0 0 5px 0;   border-bottom: 1px solid #D3D3D3;  font-weight: bold;  margin: 15px 0 20px 0;}
	div.preview-steps b {color:red}
	div#preview-logo {display: inline-block}
	div.preview-notes {text-align:center; font-style: italic; font-size: 12px; margin:5px}
</style>

<?php
	if ($was_updated) {
		$update_message = 'Brand Saved!';
		echo "<div class='notice notice-success is-dismissible dpro-wpnotice-box'><p>{$update_message}</p></div>";
	}
?>
 <!-- ====================
TOOL-BAR -->
<table class="dpro-edit-toolbar">
	<tr>
		<td></td>
		<td>
			<div class="btnnav">
				<a href="<?php echo $brand_list_url; ?>" class="add-new-h2"> <i class="fa fa-photo"></i> <?php DUP_PRO_U::_e('Brands'); ?></a>
				<?php if ($_REQUEST['action'] == 'new') : ?>
					<span><?php DUP_PRO_U::_e('Add New'); ?></span>
				<?php else: ?>
					<a href="<?php echo $brand_edit_url; ?>&action=new" class="add-new-h2"><?php DUP_PRO_U::_e('Add New'); ?></a>
				<?php endif; ?>
			</div>
		</td>
	</tr>
</table>
<hr class="dpro-edit-toolbar-divider"/>

<form id="dpro-package-brand-form" action="<?php echo $brand_edit_url; ?>" method="post" data-parsley-ui-enabled="true">
    <?php wp_nonce_field($nonce_action); ?>
	<input type="hidden" name="id" id="brand-id" value="<?php echo $brand->id; ?>" />
    <input type="hidden" name="attachments" id="brand-attachments" value="<?php echo join(";",$brand->attachments); ?>" />
	<input type="hidden" name="action" id="brand-action" value="<?php echo $_REQUEST['action']; ?>" />

	<?php if ($_REQUEST['action'] == 'default') : ?>
		<table class="provider form-table">
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Name"); ?></label></th>
				<td><?php echo $brand->name; ?></td>
			</tr>
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Notes"); ?></label></th>
				<td><?php echo $brand->notes; ?></td>
			</tr>
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Logo"); ?></label></th>
				<td>
					<div class="style-guide-link">
						<a href="javascript:void" class="button button-small" onclick="DupPro.Brand.ShowStyleGuide();"><?php DUP_PRO_U::_e("Style Guide"); ?></a>
					</div>
					<textarea id="brand-default-logo" readonly="true"><?php echo $brand->logo; ?></textarea>
				</td>
			</tr>
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Active"); ?></label></th>
				<td><?php echo ($is_default_active ? DUP_PRO_U::__("Yes") : DUP_PRO_U::__("No") . ' ' . $activate_link); ?></td>
			</tr>
		</table>
		<i><?php DUP_PRO_U::_e("The default brand cannot be changed"); ?></i>
		<br/><br/>
	<?php else: ?>
		<table class="provider form-table">
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Name"); ?></label></th>
				<td><input type="text" name="name" id="brand-name" value="<?php echo $brand->name; ?>" data-parsley-required></td>
			</tr>
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Notes"); ?></label></th>
				<td><textarea name="notes" id="brand-notes"><?php echo $brand->notes; ?></textarea></td>
			</tr>
			<tr>
				<th scope="row"><label><?php DUP_PRO_U::_e("Logo"); ?></label></th>
				<td>
					<div class="style-guide-link">
						<a href="javascript:void" class="button button-small" onclick="DupPro.Brand.ShowStyleGuide();"><?php DUP_PRO_U::_e("Style Guide"); ?></a>
					</div>

                    <?php wp_editor( $brand->logo, 'brand-logo', array(
                                'wpautop' => true,
                                'media_buttons' => true,
                                'textarea_name' => 'logo',
                                'textarea_rows' => 50,
                                'tabindex' => '',
                                'tabfocus_elements' => ':prev,:next',
                                'editor_css' => false,
                                'editor_class' => 'required',
                                'teeny' => false,
                                'dfw' => false,
                                'tinymce' => false,
                                'quicktags' => array('buttons' => 'strong,em,i,ins,close,img,link')
                            ) );
                    ?>

				</td>
			</tr>
			<tr>
				<th scope="row"><label for="brand-active"><?php DUP_PRO_U::_e("Active"); ?></label></th>
				<td>
                    <input type="checkbox" name="active" id="brand-active" value="true"<?php echo $brand->active ? ' checked' : '' ; ?> />
					<label for="brand-active"><?php DUP_PRO_U::_e("Make this the active brand"); ?></label>
				</td>
			</tr>
		</table>
	<?php endif; ?>

	<!-- ================================
    PREVIEW AREA -->
	<h2><?php DUP_PRO_U::_e('Preview Area:'); ?></h2>
	<div class="preview-area">
		<div class="preview-box">
			<div class="preview-header">
				<div class="preview-title">
					<div id="preview-logo">
						<?php echo $brand->logo; ?>
					</div>
					<div class="preview-version">
						<?php DUP_PRO_U::_e("version: "); echo DUPLICATOR_PRO_VERSION; ?> <br/>
						» <a href="javascript:void(0)"><?php DUP_PRO_U::_e("info"); ?></a> » <a href="javascript:void(0)"><?php DUP_PRO_U::_e("help"); ?></a> <i class="fa fa-question-circle"></i>
					</div>
				</div>
				<div class="preview-content">
					<div class="preview-mode"><?php DUP_PRO_U::_e("Mode: Standard Install"); ?></div>
					<div class="preview-steps">
						<?php DUP_PRO_U::_e("Step <b>1</b> of 4: Deployment"); ?>
					</div>
				</div>
			</div>
		</div>
		<div class="preview-notes">
			<?php DUP_PRO_U::_e("Note: Be sure to validate the final results in the installer.php file."); ?>
		</div>
	</div>
    <br style="clear:both" />
    <button class="button button-primary" type="button"<?php echo ($_REQUEST['action'] == 'default') ? ' disabled' : ' onclick="DupPro.Settings.Brand.Save()"'; ?>><?php DUP_PRO_U::_e('Save Brand'); ?></button>
</form>

<!-- ==========================================
THICK-BOX DIALOGS: -->
<?php
	$guide_msg  = DUP_PRO_U::__('The brandable area allows for a loose set of html and custom styling.  Below is a general guide.<br/><br/>');
	$guide_msg .=  DUP_PRO_U::__('- <b>Embed Image:</b><br/> &lt;img src="/wp-content/uploads/image.png /&gt; <br/><br/>');
	$guide_msg .=  DUP_PRO_U::__('- <b>Text Only:</b><br/> My Installer Name <br/><br/>');
	$guide_msg .=  DUP_PRO_U::__('- <b>Text &amp; Font-Awesome:</b><br/> &lt;i class="fa fa-cube"&gt;&lt;/i&gt; My Company <br/><small>Note: <a href="http://fontawesome.io/icons/" target="_blank">Font-Awesome 4.7</a> is the referenced library</small><br/><br/>');

	$alert1 = new DUP_PRO_UI_Dialog();
	$alert1->title		= DUP_PRO_U::__('Branding Guide');
	$alert1->message	= $guide_msg;
	$alert1->width	= 650;
	$alert1->height	= 350;
	$alert1->initAlert();

    $alert2 = new DUP_PRO_UI_Dialog();
	$alert2->title		= DUP_PRO_U::__('Brand Name');
	$alert2->message	= DUP_PRO_U::__("WARNING: Brand name cannot be named like <strong>Default</strong> because is a reserved name.");
	$alert2->initAlert();

    $alert3 = new DUP_PRO_UI_Dialog();
	$alert3->title		= DUP_PRO_U::__('Brand Logo');
	$alert3->message	= DUP_PRO_U::__("WARNING: Brand logo have a wrong URL.");
	$alert3->initAlert();
?>

<script>
	DupPro.Brand = new Object();

	/*	Shows the style Guide */
	DupPro.Brand.ShowStyleGuide = function()
	{
		<?php $alert1->showAlert(); ?>
		return;
	}


    jQuery(document).ready(function ($)
	{
        /*
         * CHECK IS IMAGE
         * @url: https://github.com/CreativForm/CreativeTools
         */
        $.isImage = function(string) {
            if(null === string || false === string)
                return false;
            return ((string.match(/\.(jpeg|jpg|gif|png|bmp|svg|tiff|jfif|exif|ppm|pgm|pbm|pnm|webp|hdr|hif|bpg|img|pam|tga|psd|psp|xcf|cpt|vicar)$/)!=null) ? true : false);
        };

        /*
         * CHECK IF IMAGE EXISTS
         * @url: https://github.com/CreativForm/CreativeTools
         */
        $.imageExists = function(string,callback){
            if($.isImage(string)){
                var img = new Image(10,10);
                img.src = string;
                img.onload = function() {
                    if(typeof callback == 'function'){
                        callback(true);
                        img = null;
                    }
                };
                img.onerror = function() {
                    if(typeof callback == 'function'){
                        callback(false);
                        img = null;
                    }
                };
            }
            else
            {
                if(typeof callback == 'function'){
                    callback(false);
                    img = null;
                }
            }
        };
        var strip_tags = function (input, allowed) {
            //  discuss at: http://phpjs.org/functions/strip_tags/
            // original by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
            // improved by: Luke Godfrey
            // improved by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
            //    input by: Pul
            //    input by: Alex
            //    input by: Marc Palau
            //    input by: Brett Zamir (http://brett-zamir.me)
            //    input by: Bobby Drake
            //    input by: Evertjan Garretsen
            // bugfixed by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
            // bugfixed by: Onno Marsman
            // bugfixed by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
            // bugfixed by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
            // bugfixed by: Eric Nagel
            // bugfixed by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
            // bugfixed by: Tomasz Wesolowski
            //  revised by: Rafał Kukawski (http://blog.kukawski.pl/)
            //   example 1: strip_tags('<p>Kevin</p> <br /><b>van</b> <i>Zonneveld</i>', '<i><b>');
            //   returns 1: 'Kevin <b>van</b> <i>Zonneveld</i>'
            //   example 2: strip_tags('<p>Kevin <img src="someimage.png" onmouseover="someFunction()">van <i>Zonneveld</i></p>', '<p>');
            //   returns 2: '<p>Kevin van Zonneveld</p>'
            //   example 3: strip_tags("<a href='http://kevin.vanzonneveld.net'>Kevin van Zonneveld</a>", "<a>");
            //   returns 3: "<a href='http://kevin.vanzonneveld.net'>Kevin van Zonneveld</a>"
            //   example 4: strip_tags('1 < 5 5 > 1');
            //   returns 4: '1 < 5 5 > 1'
            //   example 5: strip_tags('1 <br/> 1');
            //   returns 5: '1  1'
            //   example 6: strip_tags('1 <br/> 1', '<br>');
            //   returns 6: '1 <br/> 1'
            //   example 7: strip_tags('1 <br/> 1', '<br><br/>');
            //   returns 7: '1 <br/> 1'

            var allowed = (((allowed || '') + '')
                .toLowerCase()
                    .match(/<[a-z][a-z0-9]*>/g) || [])
                        .join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
            var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
            commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
            return input.replace(commentsAndPhpTags, '').replace(tags, function($0, $1) {
                return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
            });
        }

        DupPro.Settings.Debounce;
		DupPro.Settings.Brand.Save = function(e) {
            clearTimeout(DupPro.Settings.Debounce);
			if ($('#dpro-package-brand-form').parsley().validate()) {

                var $logo = $("#brand-logo");

				$('#brand-action').val('save');
                $logo.removeClass('parsley-error');
                var image_valid = true;
                // Check is images valid
                var images = $('<div />').html($logo.val()).children('img').map(function(){
                    var image = $(this).attr('src');
                    return image;
                }).get();

                for(var i = 0; i < images.length; i++)
                {
                    $.imageExists(images[i],function(r){
                        if(!r)
                        {
                            image_valid = false;
                            $logo.removeClass('parsley-success').addClass('parsley-error');
                        }
                    });
                }

                DupPro.Settings.Debounce = setTimeout(function() {
                    // Check is brand name reserved
                    if($('#brand-name') && $.trim($('#brand-name').val()).toLowerCase() == 'default')
                    {
                        <?php $alert2->showAlert(); ?>
                        e.preventDefault();

                    }
                    else if (!image_valid)
                    {
                        <?php $alert3->showAlert(); ?>
                        e.preventDefault();
                    }
                    else
                    {
                        $('#dpro-package-brand-form').submit();
                    }
                },200);
			}
        }

    <?php if($_REQUEST['action'] != 'default') : ?>
		//INIT
		$('#dpro-package-brand-form #brand-name').focus();

        // Let's automate this things
        DupPro.Settings.Automatization = function(e){

            if (e.originalEvent !== undefined)
            {
                clearTimeout(DupPro.Settings.Debounce);
                var $this = $("#dpro-package-brand-form #brand-logo"),
                    $debounce = 800
                    $button = $('#dpro-package-brand-form .button-primary');

                // Smart debounce
                if(e.currentTarget)
                {
                    if($(e.currentTarget).hasClass('button'))       $debounce = 5;
                    if($(e.currentTarget).hasClass('preview-area')) $debounce = 200;
                }

            //    $button.find('.fa-circle-o-notch').remove();
            //    if(!$(e.currentTarget).hasClass('button')) $button.prop('disabled',true).prepend('<i class="fa fa-circle-o-notch fa-spin"></i> ');

                DupPro.Settings.Debounce = setTimeout(function() {
                    var $value = $this.val();

                //    $button.prop('disabled',false).find('.fa-circle-o-notch').remove();
                    $this.val(strip_tags($value,'<a><i><b><u><em><ins><div><img><span><strong>'));

                    // Do preview
                    $("#dpro-package-brand-form #preview-logo").html($value);

                     // Now we must made array for path of all images (if the are on server) We don't need remote images (CDN is cool thing)
                    // Let's first collect all images
                    let images = $('<div />').html($value).children('img').map(function(){
                        return $(this).attr('src')
                    }).get();
                    images = $.unique(images);
                    $("#dpro-package-brand-form #brand-attachments").val('');

                    // New magic trick is to determinate is CDN or uploaded image
                    // - CDN will not be return like path
                    // - Server side images will be returned like image real path
                    if(images.length > 0)
                    {
                        let path = images.map(function(src){

                            let hostname = "<?php echo WP_PLUGIN_URL ?>".replace(/https?|\:\/\/|\/wp-content\/plugins/gi,'');

                            if(new RegExp('(https?:)?//' + hostname,'ig').test(src))
                            {
                                return src.replace(new RegExp('(https?:)?//' + hostname + '/wp-content|/uploads','ig'), '');
                            }
                        });

                        if(path.length > 0) $("#dpro-package-brand-form #brand-attachments").val(path.join(';'));
                    }

                },$debounce);
            }
        };
        // On textarea change
        $(document).on('change keyup paste input mouseout mouseover propertychange',"#dpro-package-brand-form #brand-logo", DupPro.Settings.Automatization);
        // On other boxes
        $(document).on('mouseover',"#dpro-package-brand-form .button-primary, #dpro-package-brand-form .preview-area", DupPro.Settings.Automatization);
    
    <?php endif; ?>

    });
</script>


