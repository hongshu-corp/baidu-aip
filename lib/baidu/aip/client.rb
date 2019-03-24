require 'baidu/aip/tokenable'

require 'baidu/aip/face/detect'
require 'baidu/aip/face/get_list'
require 'baidu/aip/face/group_add'
require 'baidu/aip/face/group_copy_user'
require 'baidu/aip/face/group_delete_user'
require 'baidu/aip/face/group_delete'
require 'baidu/aip/face/group_get_users'
require 'baidu/aip/face/group_list'
require 'baidu/aip/face/identify'
require 'baidu/aip/face/match'
require 'baidu/aip/face/multi_identify'
require 'baidu/aip/face/search'
require 'baidu/aip/face/user_add'
require 'baidu/aip/face/user_delete'
require 'baidu/aip/face/user_get'
require 'baidu/aip/face/user_update'
require 'baidu/aip/face/person_verify'
require 'baidu/aip/face/person_id_match'
require 'baidu/aip/face/face_verify'
require 'baidu/aip/face/liveness_verify'

require 'baidu/aip/image_recognition/animal'
require 'baidu/aip/image_recognition/car'
require 'baidu/aip/image_recognition/dish'
require 'baidu/aip/image_recognition/logo'
require 'baidu/aip/image_recognition/logo_add'
require 'baidu/aip/image_recognition/logo_delete'
require 'baidu/aip/image_recognition/object'
require 'baidu/aip/image_recognition/plant'

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

require 'baidu/aip/nlp/comment_tag'
require 'baidu/aip/nlp/dep_parser'
require 'baidu/aip/nlp/dnnlm_cn'
require 'baidu/aip/nlp/keyword'
require 'baidu/aip/nlp/lexer_custom'
require 'baidu/aip/nlp/lexer'
require 'baidu/aip/nlp/sentiment_classify'
require 'baidu/aip/nlp/simnet'
require 'baidu/aip/nlp/word_embedding'
require 'baidu/aip/nlp/word_sim_embedding'

require 'baidu/aip/ocr/accurate_basic'
require 'baidu/aip/ocr/accurate'
require 'baidu/aip/ocr/bankcard'
require 'baidu/aip/ocr/business_card'
require 'baidu/aip/ocr/business_license'
require 'baidu/aip/ocr/household_register'
require 'baidu/aip/ocr/birth_certificate'
require 'baidu/aip/ocr/custom'
require 'baidu/aip/ocr/driving_license'
require 'baidu/aip/ocr/form_recognize'
require 'baidu/aip/ocr/form_result_get'
require 'baidu/aip/ocr/general_basic'
require 'baidu/aip/ocr/general_enhanced'
require 'baidu/aip/ocr/general'
require 'baidu/aip/ocr/handwriting'
require 'baidu/aip/ocr/idcard'
require 'baidu/aip/ocr/license_plate'
require 'baidu/aip/ocr/passport'
require 'baidu/aip/ocr/receipt'
require 'baidu/aip/ocr/vehicle_license'
require 'baidu/aip/ocr/web_image'
require 'baidu/aip/ocr/hk_macau_exitentrypermit'
require 'baidu/aip/ocr/taiwan_exitentrypermit'

require 'baidu/aip/voice/text_to_voice'

module Baidu::Aip
  module Client
    include Tokenable

    attr_accessor :api_key, :secret_key

    # Face
    def face_detect(image, image_type, options = {})
      aip = Face::Detect.new options.merge(image: image, image_type: image_type)
      aip.client = self
      aip.process
    end

    def face_match(images = [], options = {})
      aip = Face::Match.new options.merge(images)
      aip.client = self
      aip.process
    end

    def face_search(image, image_type, options = {})
      aip = Face::Match.new options.merge(image: image, image_type: image_type)
      aip.client = self
      aip.process
    end

    def faceset_user_add(image, image_type, group_id, user_id, options = {})
      aip = Face::UserAdd.new options.merge(image: image, image_type: image_type, group_id: group_id, user_id: user_id)
      aip.client = self
      aip.process
    end

    def faceset_user_update(image, image_type, group_id, user_id, options = {})
      aip = Face::UserUpdate.new options.merge(image: image, image_type: image_type, group_id: group_id, user_id: user_id)
      aip.client = self
      aip.process
    end

    def faceset_user_delete(user_id, group_id, face_token, options = {})
      aip = Face::UserDelete.new options.merge(user_id: user_id, group_id: group_id, face_token: face_token)
      aip.client = self
      aip.process
    end

    def faceset_user_get(user_id, group_id, options = {})
      aip = Face::UserGet.new options.merge(user_id: user_id, group_id: group_id)
      aip.client = self
      aip.process
    end

    def faceset_get_list(user_id, group_id, options = {})
      aip = Face::GetList.new options.merge(user_id: user_id, group_id: group_id)
      aip.client = self
      aip.process
    end

    def face_group_get_users(group_id, options = {})
      aip = Face::GroupGetUsers.new options.merge(group_id: group_id)
      aip.client = self
      aip.process
    end

    def face_group_copy_user(user_id, source_group_id, dest_group_id)
      aip = Face::GroupCopyUser.new(user_id: user_id, source_group_id: source_group_id, dest_group_id: dest_group_id)
      aip.client = self
      aip.process
    end

    def face_group_delete_user(group_id, user_id)
      aip = Face::GroupDeleteUser.new(group_id: group_id, user_id: user_id)
      aip.client = self
      aip.process
    end

    def face_group_add(group_id)
      aip = Face::GroupAdd.new(group_id: group_id)
      aip.client = self
      aip.process
    end

    def face_group_delete(group_id)
      aip = Face::GroupDelete.new(group_id: group_id)
      aip.client = self
      aip.process
    end

    def face_group_list(options = {})
      aip = Face::GroupList.new(options)
      aip.client = self
      aip.process
    end

    def face_person_verify(image, image_type, id_card_number, name, options = {})
      aip = Face::PersonVerify.new options.merge(image: image, image_type: image_type, id_card_number: id_card_number, name: name)
      aip.client = self
      aip.process
    end

    def face_person_id_match(id_card_number, name)
      aip = Face::PersonVerify.new id_card_number:id_card_number, name: name
      aip.client = self
      aip.process
    end

    def face_verify(image, image_type, options = {})
      aip = Face::FaceVerify.new options.merge(image: image, image_type: image_type)
      aip.client = self
      aip.process
    end

    def face_identify(image_in_base64, group_id, options = {})
      aip = Face::Identify.new options.merge({image: image_in_base64, group_id: group_id})
      aip.client = self
      aip.process
    end

    def face_liveness_verify(options = {})
      aip = Face::LivenessVerify.new options
      aip.client = self
      aip.process
    end

    def face_multi_identify(image_in_base64, group_id, options = {})
      aip = Face::MultiIdentify.new options.merge({image: image_in_base64, group_id: group_id})
      aip.client = self
      aip.process
    end

    # Image_recognition
    def image_recognition_animal(image_in_base64, options = {})
      aip = ImageRecognition::Animal.new options.merge(image: image_in_base64)
      aip.client = self

      aip.process
    end

    def image_recognition_car(image_in_base64, options = {})
      aip = ImageRecognition::Car.new options.merge(image: image_in_base64)
      aip.client = self

      aip.process
    end

    def image_recognition_dish(image_in_base64, options = {})
      aip = ImageRecognition::Dish.new options.merge(image: image_in_base64)
      aip.client = self

      aip.process
    end

    def image_recognition_logo(image_in_base64, options = {})
      aip = ImageRecognition::Logo.new options.merge(image: image_in_base64)
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
      aip = ImageRecognition::Object.new options.merge(image: image_in_base64)
      aip.client = self

      aip.process
    end

    def image_recognition_plant(image_in_base64)
      aip = ImageRecognition::Plant.new(image: image_in_base64)
      aip.client = self

      aip.process
    end

    # Image audit
    def image_audit_anti_porn(image_in_base64)
      aip = ImageAudit::AntiPorn.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_audit_anti_porn_gif(image_in_base64)
      aip = ImageAudit::AntiPornGif.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_audit_anti_terrer(image_in_base64)
      aip = ImageAudit::AntiTerror.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_audit_combination(scenes, image_in_base64, options={})
      aip = ImageAudit::Combination.new options.merge({scenes: scenes, image: image_in_base64})
      aip.client = self
      aip.process
    end

    def image_audit_combination_with_url(scenes, image_url, options={})
      aip = ImageAudit::Combination.new options.merge({scenes: scenes, imageUrl: image_url})
      aip.client = self
      aip.process
    end

    def image_audit_face(images_in_base64 = [])
      aip = ImageAudit::Face.new({images: images_in_base64.join(',')})
      aip.client = self
      aip.process
    end

    def image_audit_face_url(image_urls = [])
      aip = ImageAudit::Face.new({imgUrls: image_urls.join(',')})
      aip.client = self
      aip.process
    end

    def image_audit_user_defined(image_in_base64)
      aip = ImageAudit::UserDefined.new({image: images_in_base64})
      aip.client = self
      aip.process
    end

    def image_audit_face_url(image_url)
      aip = ImageAudit::UserDefined.new({imgUrl: image_url})
      aip.client = self
      aip.process
    end

    # Image Search
    def image_search_product_add(image_in_base64, options = {})
      aip = ImageSearch::ProductAdd.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_search_product(image_in_base64, options = {})
      aip = ImageSearch::Product.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_search_product_delete(image_in_base64)
      aip = ImageSearch::ProductDelete.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_search_same_add(image_in_base64, brief)
      aip = ImageSearch::SameAdd.new({image: image_in_base64, brief: brief})
      aip.client = self
      aip.process
    end

    def image_search_same(image_in_base64)
      aip = ImageSearch::Same.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_search_same_delete(image_in_base64)
      aip = ImageSearch::SameDelete.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_search_similar_add(image_in_base64, brief)
      aip = ImageSearch::SimilarAdd.new({image: image_in_base64, brief: brief})
      aip.client = self
      aip.process
    end

    def image_search_similar(image_in_base64)
      aip = ImageSearch::Similar.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def image_search_similar_delete(image_in_base64)
      aip = ImageSearch::SimilarDelete.new(image: image_in_base64)
      aip.client = self
      aip.process
    end

    # knowledge_graph
    def knowledge_graph_task_create(name, template_content, input_mapping_file, output_file, ulr_pattern, options = {})
      aip = KnowledgeGraph::TaskCreate.new options.merge({name: name, template_content: template_content, input_mapping_file: input_mapping_file, output_file: output_file})
      aip.client = self
      aip.process
    end

    def knowledge_graph_task_info(id, options = {})
      aip = KnowledgeGraph::TaskInfo.new options.merge({id: id})
      aip.client = self
      aip.process
    end

    def knowledge_graph_task_query(options = {})
      aip = KnowledgeGraph::TaskQuery.new(options)
      aip.client = self
      aip.process
    end

    def knowledge_graph_task_status(id, options = {})
      aip = KnowledgeGraph::TaskStatus.new options.merge({id: id})
      aip.client = self
      aip.process
    end

    def knowledge_graph_task_start(id, options = {})
      aip = KnowledgeGraph::TaskStart.new options.merge({id: id})
      aip.client = self
      aip.process
    end

    def knowledge_graph_task_update(id, options = {})
      aip = KnowledgeGraph::TaskUpdate.new options.merge({id: id})
      aip.client = self
      aip.process
    end

    # nlp
    def nlp_comment_tag(text, options = {})
      aip = Nlp::CommentTag.new options.merge({text: text})
      aip.client = self
      aip.process
    end

    def nlp_dep_parser(text, options = {})
      aip = Nlp::DepParser.new options.merge({text: text})
      aip.client = self
      aip.process
    end

    def nlp_dnnlm_cn(text, options = {})
      aip = Nlp::DnnlmCn.new options.merge({text: text})
      aip.client = self
      aip.process
    end

    def nlp_keyword(title, content, options = {})
      aip = Nlp::Keyword.new options.merge({title: title, content: content})
      aip.client = self
      aip.process
    end

    def nlp_lexer_custom(text, options = {})
      aip = Nlp::LexerCustom.new options.merge({text: text})
      aip.client = self
      aip.process
    end

    def nlp_lexer(text, options = {})
      aip = Nlp::Lexer.new options.merge({text: text})
      aip.client = self
      aip.process
    end

    def nlp_sentiment_classify(text, options={})
      aip = Nlp::SentimentClassify.new options.merge({text: text})
      aip.client = self
      aip.process
    end

    def nlp_simnet(text1, text2, options = {})
      aip = Nlp::Simnet.new options.merge({text_1:text1, text_2: text2})
      aip.client = self
      aip.process
    end

    def nlp_word_embedding(word, options = {})
      aip = Nlp::WordEmbedding.new options.merge({word: word})
      aip.client = self
      aip.process
    end

    def nlp_word_sim_embedding(word1, word2, options = {})
      aip = Nlp::WordSimEmbedding.new options.merge({word_1: word1, word_2: word2})
      aip.client = self
      aip.process
    end

    # Ocr
    def ocr_accurate_basic(image_in_base64, options = {})
      aip = Ocr::AccurateBasic.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_accurate(image_in_base64, options = {})
      aip = Ocr::Accurate.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_bankcard(image_in_base64, options = {})
      aip = Ocr::Bankcard.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_business_card(image_in_base64, options = {})
      aip = Ocr::BusinessCard.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_business_license(image_in_base64, options = {})
      aip = Ocr::BusinessLicense.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_birth_certificate(image_in_base64, options = {})
      aip = Ocr::BirthCertificate.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_custom(image_in_base64, template_sign, options = {})
      aip = Ocr::Custom.new options.merge({image: image_in_base64, templateSign: template_sign})
      aip.client = self
      aip.process
    end

    def ocr_driving_license(image_in_base64, options = {})
      aip = Ocr::DrivingLicense.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    # todo
    # def ocr_form_recognize(image_in_base64, options = {})
    #   aip = Ocr::FormRecognize.new options.merge(image: image_in_base64)
    #   aip.client = self
    #   aip.process
    # end

    def ocr_form_result_get(request_id, options = {})
      aip = Ocr::FormResultGet.new options.merge({request_id: request_id})
      aip.client = self
      aip.process
    end

    def ocr_general_basic(image_in_base64, options = {})
      aip = Ocr::GeneralBasic.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_genral_enhanced(image_in_base64, options = {})
      aip = Ocr::GeneralEnhanced.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    # including the location
    def ocr_general(image_in_base64, options = {})
      aip = Ocr::General.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_handwriting(image_in_base64, options = {})
      aip = Ocr::Handwriting.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_idcard(image_in_base64, idcard_side, options = {})
      aip = Ocr::Idcard.new options.merge(image: image_in_base64, id_card_side: idcard_side)
      aip.client = self
      aip.process
    end

    def ocr_passport(image_in_base64, options = {})
      aip = Ocr::Passport.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_license_plate(image_in_base64, options = {})
      aip = Ocr::LicensePlate.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_receipt(image_in_base64, options = {})
      aip = Ocr::Receipt.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_vehicle_license(image_in_base64, options = {})
      aip = Ocr::VehicleLicense.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_hk_macau_exitentrypermit(image_in_base64, options = {})
      aip = Ocr::HkMacauExitentrypermit.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_taiwan_exitentrypermit(image_in_base64, options = {})
      aip = Ocr::TaiwanExitentrypermit.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def ocr_web_image(image_in_base64, options = {})
      aip = Ocr::WebImage.new options.merge(image: image_in_base64)
      aip.client = self
      aip.process
    end

    def text_to_voice(text, options = {})
      aip = Voice::TextToVoice.new options.merge(tex: text)
      aip.client = self
      aip.process
    end
  end
end
