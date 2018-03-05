require 'baidu/aip/face/detect'
require 'baidu/aip/face/group_copy_user'
require 'baidu/aip/face/group_delete_user'
require 'baidu/aip/face/group_get_list'
require 'baidu/aip/face/group_get_users'
require 'baidu/aip/face/identify'
require 'baidu/aip/face/match'
require 'baidu/aip/face/multi_identify'
require 'baidu/aip/face/user_add'
require 'baidu/aip/face/user_delete'
require 'baidu/aip/face/user_get'
require 'baidu/aip/face/user_update'
require 'baidu/aip/face/verify'

require 'baidu/aip/image_recognition/animal'
require 'baidu/aip/image_recognition/car'
require 'baidu/aip/image_recognition/dish'
require 'baidu/aip/image_recognition/logo'
require 'baidu/aip/image_recognition/logo_add'
require 'baidu/aip/image_recognition/logo_delete'
require 'baidu/aip/image_recognition/object'
require 'baidu/aip/image_recognition/plant'
require 'baidu/aip/tokenable'

require 'baidu/aip/image_audit/anti_porn'
require 'baidu/aip/image_audit/anti_porn_gif'
require 'baidu/aip/image_audit/anti_terror'
require 'baidu/aip/image_audit/combination'
require 'baidu/aip/image_audit/face'
require 'baidu/aip/image_audit/user_defined'

require 'baidu/aip/image_search/product_add'
require 'baidu/aip/image_search/product_delete'
require 'baidu/aip/image_search/product'
require 'baidu/aip/image_search/same_add'
require 'baidu/aip/image_search/same_delete'
require 'baidu/aip/image_search/same'
require 'baidu/aip/image_search/similar_add'
require 'baidu/aip/image_search/similar_delete'
require 'baidu/aip/image_search/similar'

require 'baidu/aip/knowledge_graph/task_create'
require 'baidu/aip/knowledge_graph/task_info'
require 'baidu/aip/knowledge_graph/task_query'
require 'baidu/aip/knowledge_graph/task_status'
require 'baidu/aip/knowledge_graph/task_start'
require 'baidu/aip/knowledge_graph/task_update'

module Baidu::Aip
  module Client
    include Tokenable

    attr_accessor :api_key, :secret_key


    # Face
    def face_detect(image_in_base64, options = {})
      aip = Face::Detect.new options.merge({image: image_in_base64})
      aip.client = self
      aip.process
    end

    def face_group_copy_user(group_id, uid, source_group_id)
      aip = Face::GroupCopyUser.new({group_id: group_id, uid: uid, src_group_id: source_group_id})
      aip.client = self
      aip.process
    end


    def face_group_delete_user(group_id, uid)
      aip = Face::GroupDeleteUser.new({group_id: group_id, uid: uid})
      aip.client = self
      aip.process
    end


    def face_group_get_list(options = {})
      aip = Face::GroupGetList.new options
      aip.client = self
      aip.process
    end


    def face_group_get_users(group_id, options = {})
      aip = Face::GroupGetUsers.new options.merge({group_id: group_id})
      aip.client = self
      aip.process
    end


    def face_identify(image_in_base64, group_id, options = {})
      aip = Face::Identify.new options.merge({image: image_in_base64, group_id: group_id})
      aip.client = self
      aip.process
    end


    def face_match(images_in_base64 = [], options = {})
      aip = Face::Match.new options.merge({image: images_in_base64.join(',')})
      aip.client = self
      aip.process
    end


    def face_multi_identify(image_in_base64, group_id, options = {})
      aip = Face::MultiIdentify.new options.merge({image: image_in_base64, group_id: group_id})
      aip.client = self
      aip.process
    end


    def face_user_add(uid, group_id, image_in_base64, user_info, options = {})
      aip = Face::UserAdd.new options.merge({uid: uid, group_id: group_id, image: image_in_base64, user_info: user_info})
      aip.client = self
      aip.process
    end


    def face_user_delete(uid, options = {})
      aip = Face::UserDelete.new options.merge({uid: uid})
      aip.client = self
      aip.process
    end


    def face_user_get(uid, options = {})
      aip = Face::UserGet.new options.merge({uid: uid})
      aip.client = self
      aip.process
    end


    def face_user_update(uid, image_in_base64, user_info, group_id, options = {})
      aip = Face::UserUpdate.new options.merge({uid: uid, image: image_in_base64, user_info: user_info, group_id: group_id})
      aip.client = self
      aip.process
    end


    def face_verify(image_in_base64, id_card_number, name, options = {})
      aip = Face::Verify.new options.merge({image: image_in_base64, id_card_number: id_card_number, name: name})
      aip.client = self
      aip.process
    end


    # Image_recognition

    def image_recognition_animal(image_in_base64, options = {})
      aip = ImageRecognition::Animal.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_car(image_in_base64, options = {})
      aip = ImageRecognition::Car.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_dish(image_in_base64, options = {})
      aip = ImageRecognition::Dish.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_logo(image_in_base64, options = {})
      aip = ImageRecognition::Logo.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_logo_add(image_in_base64, brief)
      aip = ImageRecognition::LogoAdd.new options.merge({image: image_in_base64, brief: brief})
      aip.client = self

      aip.process
    end

    def image_recognition_logo_delete(image_in_base64, cont_sign)
      aip = ImageRecognition::LogoDelete.new options.merge({image: image_in_base64, cont_sign: cont_sign})
      aip.client = self

      aip.process
    end

    def image_recognition_object(image_in_base64, options = {})
      aip = ImageRecognition::Object.new options.merge({image: image_in_base64})
      aip.client = self

      aip.process
    end

    def image_recognition_plant(image_in_base64)
      aip = ImageRecognition::Plant.new({image: image_in_base64})
      aip.client = self

      aip.process
    end

  end
end
