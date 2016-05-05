<?php
/**
 *  Image Upload helper Function
 */
defined('BASEPATH') OR exit('No direct script access allowed');


// ------------------------------------------------------------------------

if ( ! function_exists('image_save'))
{
    /**
     * Element
     *
     * Lets you determine whether an array index is set and whether it has a value.
     * If the element is empty it returns NULL (or whatever you specify as the default value.)
     *
     * @param	string
     * @param	array
     * @param	mixed
     * @return	mixed	depends on what the array contains
     */
    function image_save($file_name)
    {

        //get main CodeIgniter object
        $ci =& get_instance();


        $config = array();
        $config['upload_path'] = 'images/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['encrypt_name'] = TRUE;
        /*$config['max_width'] = 150;
        $config['max_height'] = 150;
        $config['encrypt_name'] = TRUE;
        $config['overwrite'] = FALSE;<br />*/
        $response = array();
        $ci->load->library('upload');
        $ci->upload->initialize($config);

        //upload the image
        if (!$ci->upload->do_upload($file_name)) {
            $response['erros'][] = $ci->upload->display_errors();
        } else {
            //$response['result'][] = $ci->upload->data();

            $fdata = $ci->upload->data();
            $response = $config['upload_path'].$fdata['file_name'];
        }


        return $response;

    }
}



