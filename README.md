# Baidu::Aip - unofficial

This gem is used for calling baidu AI API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baidu-aip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baidu-aip

## Baidu document
https://ai.baidu.com/docs

## Usage
Add file baidu-aip.rb to your initializers folder.
```ruby
Baidu::Aip.configure do |config|
  config.api_key = 'your baidu app api key'
  config.secret_key = 'your baidu app secret key'
end
```

e.g.
Baidu dish detect:
```ruby
base64 = Base64.encode64(File.open("your image path", "rb").read)

result = Baidu::Aip.image_recognition_dish base64
```
| category | api | example |
|----------|-----|---------|
| Voice | [text_to_voice](https://ai.baidu.com/docs#/TTS-API/top) | Baidu::Aip.text_to_voice(text, options) |
| face | [face_detect](https://ai.baidu.com/docs#/Face-Detect-V3/top) | Baidu::Aip.face_detect(image, image_type, options) |
| face | [face_match](https://ai.baidu.com/docs#/Face-Match-V3/top) | Baidu::Aip.face_match(images, options) |
| face | [face_search](https://ai.baidu.com/docs#/Face-Search-V3/top) | Baidu::Aip.face_search(image, image_type, options) |
| face | [faceset_user_add](https://ai.baidu.com/docs#/Face-Set-V3/8bea9967) | Baidu::Aip.faceset_user_add(image, image_type, group_id, user_id, options) |
| face | [faceset_user_update](https://ai.baidu.com/docs#/Face-Set-V3/bc7f58d1) | Baidu::Aip.faceset_user_update(image, image_type, group_id, user_id, options) |
| face | [faceset_user_delete](https://ai.baidu.com/docs#/Face-Set-V3/912191e1) | Baidu::Aip.faceset_user_delete(user_id, group_id, face_token, options) |
| face | [faceset_user_get](https://ai.baidu.com/docs#/Face-Set-V3/a8205a0b) | Baidu::Aip.faceset_user_get(user_id, group_id, options) |
| face | [faceset_get_list](https://ai.baidu.com/docs#/Face-Set-V3/871dcfcb) | Baidu::Aip.faceset_get_list(user_id, group_id, options) |
| face | [face_group_get_users](https://ai.baidu.com/docs#/Face-Set-V3/67d10e05) | Baidu::Aip.face_group_get_users(group_id, options) |
| face | [face_group_copy_user](https://ai.baidu.com/docs#/Face-Set-V3/4c8cc30a) | Baidu::Aip.face_group_copy_user(user_id, source_group_id, dest_group_id) |
| face | [face_group_delete_user](https://ai.baidu.com/docs#/Face-Set-V3/95b207bf) | Baidu::Aip.face_group_delete_user(group_id, user_id) |
| face | [face_group_add](https://ai.baidu.com/docs#/Face-Set-V3/5867daad) | Baidu::Aip.face_group_add(group_id) |
| face | [face_group_delete](https://ai.baidu.com/docs#/Face-Set-V3/24e7452a) | Baidu::Aip.face_group_delete(group_id) |
| face | [face_person_verify](https://ai.baidu.com/docs#/Face-PersonVerify-V3/5e90cef1) | Baidu::Aip.face_person_verify(image, image_type, id_card_number, name, options) |
| face | [face_person_id_match](https://ai.baidu.com/docs#/Face-PersonVerify-V3/5e90cef1) | Baidu::Aip.face_person_id_match(id_card_number, name) |
| face | [face_verify](https://ai.baidu.com/docs#/Face-Liveness-V3/top) | Baidu::Aip.face_verify(image, image_type, options) |
| face | [face_identify](https://ai.baidu.com/docs#/Face-H5Liveness-V3/624a381c) | Baidu::Aip.face_identify(image, options) |
| face | [face_liveness_verify](https://ai.baidu.com/docs#/Face-H5Liveness-V3/624a381c) | Baidu::Aip.face_liveness_verify(options) |
| face | [face_multi_identify]() | Baidu::Aip.face_multi_identify(image, group_id, options) |
| ImageRecognition | [image_recognition_general](https://ai.baidu.com/docs#/ImageClassify-API/141c7bfa) | Baidu::Aip.image_recognition_general(image, options) |
| ImageRecognition | [image_recognition_subject_location](https://ai.baidu.com/docs#/ImageClassify-API/ed0a8379) | Baidu::Aip.image_recognition_subject_location(image, options) |
| ImageRecognition | [image_recognition_dish](https://ai.baidu.com/docs#/ImageClassify-API/d461e2b4) | Baidu::Aip.image_recognition_dish(image, options) |
| ImageRecognition | [image_recognition_dish_add](https://ai.baidu.com/docs#/ImageClassify-API/c6188985) | Baidu::Aip.image_recognition_dish_add(image, sub_lib, options) |
| ImageRecognition | [image_recognition_dish_search](https://ai.baidu.com/docs#/ImageClassify-API/2ea0f743) | Baidu::Aip.image_recognition_dish_search(image, sub_lib, options) |
| ImageRecognition | [image_recognition_dish_delete](https://ai.baidu.com/docs#/ImageClassify-API/477e48b4) | Baidu::Aip.image_recognition_dish_delete(image, sub_lib, options) |
| ImageRecognition | [image_recognition_logo](https://ai.baidu.com/docs#/ImageClassify-API/d9fda869) | Baidu::Aip.image_recognition_logo(image, options) |
| ImageRecognition | [image_recognition_logo_add](https://ai.baidu.com/docs#/ImageClassify-API/722911c0) | Baidu::Aip.image_recognition_logo_add(image, brief) |
| ImageRecognition | [image_recognition_logo_delete](https://ai.baidu.com/docs#/ImageClassify-API/ec50c3f1) | Baidu::Aip.image_recognition_logo_delete(image, cont_sign) |
| ImageRecognition | [image_recognition_animal](https://ai.baidu.com/docs#/ImageClassify-API/562659ee) | Baidu::Aip.image_recognition_animal(image, options) |
| ImageRecognition | [image_recognition_plant](https://ai.baidu.com/docs#/ImageClassify-API/8b21e7c7) | Baidu::Aip.image_recognition_plant(image, options) |
| ImageRecognition | [image_recognition_flower](https://ai.baidu.com/docs#/ImageClassify-API/f4347b18) | Baidu::Aip.image_recognition_flower(image, options) |
| ImageRecognition | [image_recognition_ingredient](https://ai.baidu.com/docs#/ImageClassify-API/f0fe4219) | Baidu::Aip.image_recognition_ingredient(image, options) |
| ImageRecognition | [image_recognition_landmark](https://ai.baidu.com/docs#/ImageClassify-API/2c607890) | Baidu::Aip.image_recognition_landmark(image, options) |
| ImageRecognition | [image_recognition_redwine](https://ai.baidu.com/docs#/ImageClassify-API/5e3dd57a) | Baidu::Aip.image_recognition_redwine(image, options) |
| ImageRecognition | [image_recognition_car](https://ai.baidu.com/docs#/ImageClassify-API/fe686c3a) | Baidu::Aip.image_recognition_car(image, options) |
| ImageRecognition | [image_recognition_vehicle_detect](https://ai.baidu.com/docs#/ImageClassify-API/57272011) | Baidu::Aip.image_recognition_vehicle_detect(image, options) |
| ImageRecognition | [image_recognition_traffic_flow](https://ai.baidu.com/docs#/ImageClassify-API/57272011) | Baidu::Aip.image_recognition_traffic_flow(case_id, case_int, area, image_in_base64, options) |
| ImageAudit | [image_audit_censor](https://ai.baidu.com/docs#/ImageCensoring-API/36636de4) | Baidu::Aip.image_audit_censor(image_or_url, scenes, options) |
| ImageAudit | [image_audit_user_defined](https://ai.baidu.com/docs#/ImageCensoring-API/36636de4) | Baidu::Aip.image_audit_user_defined(image) |
| ImageAudit | [image_audit_anti_porn_gif](https://ai.baidu.com/docs#/ImageCensoring-API/fd64e7cd) | Baidu::Aip.image_audit_anti_porn_gif(image_or_url) |
| ImageAudit | [image_audit_face](https://ai.baidu.com/docs#/ImageCensoring-API/5b2d2416) | Baidu::Aip.image_audit_face(image) |
| ImageAudit | [image_audit_face_url](https://ai.baidu.com/docs#/ImageCensoring-API/5b2d2416) | Baidu::Aip.image_audit_face_url(urls) |
| ImageAudit | [image_audit_video](https://ai.baidu.com/docs#/ImageCensoring-API/37a375a1) | Baidu::Aip.image_audit_video(scenes, image, options) |
| ImageAudit | [image_audit_feedback](https://ai.baidu.com/docs#/ImageCensoring-API/2e8d3d8c) | Baidu::Aip.image_audit_feedback(api_url, correct, options) |
| ImageSearch | [image_search_product_add]() | Baidu::Aip.image_search_product_add(image, options) |
| ImageSearch | [image_search_product]() | Baidu::Aip.image_search_product(image, options) |
| ImageSearch | [image_search_product_delete]() | Baidu::Aip.image_search_product_delete(image) |
| ImageSearch | [image_search_same_add]() | Baidu::Aip.image_search_same_add(image, brief) |
| ImageSearch | [image_search_same]() | Baidu::Aip.image_search_same(image) |
| ImageSearch | [image_search_same_delete]() | Baidu::Aip.image_search_same_delete(image) |
| ImageSearch | [image_search_similar_add]() | Baidu::Aip.image_search_similar_add(image, brief) |
| ImageSearch | [image_search_similar]() | Baidu::Aip.image_search_similar(image) |
| ImageSearch | [image_search_similar_delete]() | Baidu::Aip.image_search_similar_delete(image) |
| KnowledgeGraph | [knowledge_graph_task_create]() | Baidu::Aip.knowledge_graph_task_create(name, template_content, input_mapping_file, url_pattern, options) |
| KnowledgeGraph | [knowledge_graph_task_info]() | Baidu::Aip.knowledge_graph_task_info(id, options) |
| KnowledgeGraph | [knowledge_graph_task_query]() | Baidu::Aip.knowledge_graph_task_query(options) |
| KnowledgeGraph | [knowledge_graph_task_status]() | Baidu::Aip.knowledge_graph_task_status(id, options) |
| KnowledgeGraph | [knowledge_graph_task_start]() | Baidu::Aip.knowledge_graph_task_start(id, options) |
| KnowledgeGraph | [knowledge_graph_task_update]() | Baidu::Aip.knowledge_graph_task_update(id, options) |
| Nlp | [nlp_comment_tag]() | Baidu::Aip.nlp_comment_tag(text, options) |
| Nlp | [nlp_dep_parser]() | Baidu::Aip.nlp_dep_parser(text, options) |
| Nlp | [nlp_dnnlm_cn]() | Baidu::Aip.nlp_dnnlm_cn(text, options) |
| Nlp | [nlp_keyword]() | Baidu::Aip.nlp_keyword(text, options) |
| Nlp | [nlp_lexer_custom]() | Baidu::Aip.nlp_lexer_custom(text, options) |
| Nlp | [nlp_lexer]() | Baidu::Aip.nlp_lexer(text, options) |
| Nlp | [nlp_sentiment_classify]() | Baidu::Aip.nlp_sentiment_classify(text, options) |
| Nlp | [nlp_simnet]() | Baidu::Aip.nlp_simnet(text, text_2, options) |
| Nlp | [nlp_word_embedding]() | Baidu::Aip.nlp_word_embedding(word, options) |
| Nlp | [nlp_word_sim_embedding]() | Baidu::Aip.nlp_word_sim_embedding(word, word2, options) |
| OCR | [ocr_accurate_basic]() | Baidu::Aip.ocr_accurate_basic(image, options) |
| OCR | [ocr_accurate]() | Baidu::Aip.ocr_accurate(image, options) |
| OCR | [ocr_bankcard]() | Baidu::Aip.ocr_bankcard(image, options) |
| OCR | [ocr_business_card]() | Baidu::Aip.ocr_business_card(image, options) |
| OCR | [ocr_business_license]() | Baidu::Aip.ocr_business_license(image, options) |
| OCR | [ocr_birth_certificate]() | Baidu::Aip.ocr_birth_certificate(image, options) |
| OCR | [ocr_custom]() | Baidu::Aip.ocr_custom(image, template_sign, options) |
| OCR | [ocr_driving_license]() | Baidu::Aip.ocr_driving_license(image, options) |
| OCR | [ocr_form_result_get]() | Baidu::Aip.ocr_form_result_get(image, options) |
| OCR | [ocr_general_basic]() | Baidu::Aip.ocr_general_basic(image, options) |
| OCR | [ocr_genral_enhanced]() | Baidu::Aip.ocr_genral_enhanced(image, options) |
| OCR | [ocr_general]() | Baidu::Aip.ocr_general(image, options) |
| OCR | [ocr_handwriting]() | Baidu::Aip.ocr_handwriting(image, options) |
| OCR | [ocr_idcard]() | Baidu::Aip.ocr_idcard(image, idcard_side, options) |
| OCR | [ocr_passport]() | Baidu::Aip.ocr_passport(image, options) |
| OCR | [ocr_license_plate]() | Baidu::Aip.ocr_license_plate(image, options) |
| OCR | [ocr_receipt]() | Baidu::Aip.ocr_receipt(image, options) |
| OCR | [ocr_vehicle_license]() | Baidu::Aip.ocr_vehicle_license(image, options) |
| OCR | [ocr_hk_macau_exitentrypermit]() | Baidu::Aip.ocr_hk_macau_exitentrypermit(image, options) |
| OCR | [ocr_taiwan_exitentrypermit]() | Baidu::Aip.ocr_taiwan_exitentrypermit(image, options) |
| OCR | [ocr_web_image]() | Baidu::Aip.ocr_web_image(image, options) |

## Contributing

I will not consume all the apis, there are some issue maybe.
Welcome pr.

Hope help.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

