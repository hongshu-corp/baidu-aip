module Baidu::Aip
  module Constants
    # FACE
    FACE_DETECT = 'https://aip.baidubce.com/rest/2.0/face/v3/detect'.freeze
    FACE_MATCH = 'https://aip.baidubce.com/rest/2.0/face/v3/match'.freeze
    FACE_SEARCH = 'https://aip.baidubce.com/rest/2.0/face/v3/search'.freeze
    FACE_USER_ADD = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/add'.freeze
    FACE_USER_UPDATE = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/update'.freeze
    FACE_USER_DELETE = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/face/delete'.freeze
    FACE_USER_GET = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/get'.freeze
    FACE_GET_LIST = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/face/getlist'.freeze
    FACE_GROUP_GET_USERS = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/group/getusers'.freeze
    FACE_GROUP_COPY_USER = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/copy'.freeze
    FACE_GROUP_DELETE_USER = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/delete'.freeze
    FACE_GROUP_ADD = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/group/add'.freeze
    FACE_GROUP_DELETE = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/group/add'.freeze
    FACE_GROUP_LIST = 'https://aip.baidubce.com/rest/2.0/face/v3/faceset/group/list'.freeze
    FACE_PERSON_VERIFY = 'https://aip.baidubce.com/rest/2.0/face/v3/person/verify'.freeze
    FACE_PERSON_ID_MATCH = 'https://aip.baidubce.com/rest/2.0/face/v3/person/idmatch'.freeze
    FACE_FACE_VERIFY = 'https://aip.baidubce.com/rest/2.0/face/v3/faceverify'.freeze
    FACE_IDENTIFY = 'https://aip.baidubce.com/rest/2.0/face/v2/identify'.freeze
    FACE_LIVENESS_VERIFY = 'https://aip.baidubce.com/rest/2.0/face/v1/faceliveness/sessioncode'.freeze
    FACE_MULTI_IDENTIFY = 'https://aip.baidubce.com/rest/2.0/face/v2/multi-identify'.freeze

    # IMAGE_AUDIT
    IMAGE_AUDIT_CENSOR = 'https://aip.baidubce.com/api/v1/solution/direct/img_censor'.freeze
    IMAGE_AUDIT_USER_DEFINED = 'https://aip.baidubce.com/rest/2.0/solution/v1/img_censor/user_defined'.freeze
    IMAGE_AUDIT_ANTI_PORN = 'https://aip.baidubce.com/rest/2.0/antiporn/v1/detect'.freeze
    IMAGE_AUDIT_ANTI_PORN_GIF = 'https://aip.baidubce.com/rest/2.0/antiporn/v1/detect_gif'.freeze
    IMAGE_AUDIT_FACE = 'https://aip.baidubce.com/rest/2.0/solution/v1/face_audit'.freeze
    IMAGE_AUDIT_VIDEO = 'https://aip.baidubce.com/rest/2.0/solution/v1/video_censor/user_defined'.freeze
    IMAGE_AUDIT_FEEDBACK = 'https://aip.baidubce.com/rpc/2.0/feedback/v1/report'.freeze
    IMAGE_AUDIT_COMBINATION = 'https://aip.baidubce.com/api/v1/solution/direct/img_censor'.freeze

    # IMAGE RECOGNITION
    IMAGE_RECOGNITION_GENERAL = 'https://aip.baidubce.com/rest/2.0/image-classify/v2/advanced_general'.freeze
    IMAGE_RECOGNITION_SUBJECT_LOCATION = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/object_detect'.freeze
    IMAGE_RECOGNITION_DISH = 'https://aip.baidubce.com/rest/2.0/image-classify/v2/dish'.freeze
    IMAGE_RECOGNITION_DISH_ADD = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/dish/add'.freeze
    IMAGE_RECOGNITION_DISH_SEARCH = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/dish/search'.freeze
    IMAGE_RECOGNITION_DISH_DELETE = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/dish/delete'.freeze
    IMAGE_RECOGNITION_LOGO = 'https://aip.baidubce.com/rest/2.0/image-classify/v2/logo'.freeze
    IMAGE_RECOGNITION_LOGO_ADD = 'https://aip.baidubce.com/rest/2.0/realtime_search/v1/logo/add'.freeze
    IMAGE_RECOGNITION_LOGO_DELETE = 'https://aip.baidubce.com/rest/2.0/realtime_search/v1/logo/delete'.freeze
    IMAGE_RECOGNITION_ANIMAL = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/animal'.freeze
    IMAGE_RECOGNITION_PLANT = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/plant'.freeze
    IMAGE_RECOGNITION_FLOWER = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/flower'.freeze
    IMAGE_RECOGNITION_INGREDIENT = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/ingredient'.freeze
    IMAGE_RECOGNITION_LANDMARK = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/landmark'.freeze
    IMAGE_RECOGNITION_REDWINE = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/redwine'.freeze
    IMAGE_RECOGNITION_CAR = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/car'.freeze
    IMAGE_RECOGNITION_VEHICLE_DETECT = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/vehicle_detect'.freeze
    IMAGE_RECOGNITION_TRAFFIC_FLOW = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/traffic_flow'.freeze

    # IMAGE_SEARCH
    IMAGE_SEARCH_SAME_ADD = 'https://aip.baidubce.com/rest/2.0/realtime_search/same_hq/add'.freeze
    IMAGE_SEARCH_SAME = 'https://aip.baidubce.com/rest/2.0/realtime_search/same_hq/search'.freeze
    IMAGE_SEARCH_SAME_DELETE = 'https://aip.baidubce.com/rest/2.0/realtime_search/same_hq/delete'.freeze
    IMAGE_SEARCH_SIMILAR_ADD = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/add'.freeze
    IMAGE_SEARCH_SIMILAR = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/search'.freeze
    IMAGE_SEARCH_SIMILAR_DELETE = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/delete'.freeze
    IMAGE_SEARCH_PRODUCT_ADD = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/product/add'.freeze
    IMAGE_SEARCH_PRODUCT = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/product/search'.freeze
    IMAGE_SEARCH_PRODUCT_DELETE = 'https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/product/delete'.freeze

    # KNOWLEDGE GRAPH
    KNOWLEDGE_GRAPH_TASK_CREATE = 'https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_create'.freeze
    KNOWLEDGE_GRAPH_TASK_UPDATE = 'https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_update'.freeze
    KNOWLEDGE_GRAPH_TASK_INFO = 'https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_info'.freeze
    KNOWLEDGE_GRAPH_TASK_QUERY = 'https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_query'.freeze
    KNOWLEDGE_GRAPH_TASK_START = 'https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_start'.freeze
    KNOWLEDGE_GRAPH_TASK_STATUS = 'https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_status'.freeze

    # NLP
    NLP_LEXER = 'https://aip.baidubce.com/rpc/2.0/nlp/v1/lexer'.freeze
    NLP_LEXER_CUSTOM = 'https://aip.baidubce.com/rpc/2.0/nlp/v1/lexer_custom'.freeze
    NLP_DEP_PARSER = 'https://aip.baidubce.com/rpc/2.0/nlp/v1/depparser'.freeze
    NLP_WORD_EMBEDDING = 'https://aip.baidubce.com/rpc/2.0/nlp/v2/word_emb_vec'.freeze
    NLP_DNNLM_CN = 'https://aip.baidubce.com/rpc/2.0/nlp/v2/dnnlm_cn'.freeze
    NLP_WORD_SIM_EMBEDDING = 'https://aip.baidubce.com/rpc/2.0/nlp/v2/word_emb_sim'.freeze
    NLP_SIMNET = 'https://aip.baidubce.com/rpc/2.0/nlp/v2/simnet'.freeze
    NLP_COMMENT_TAG = 'https://aip.baidubce.com/rpc/2.0/nlp/v2/comment_tag'.freeze
    NLP_SENTIMENT_CLASSIFY = 'https://aip.baidubce.com/rpc/2.0/nlp/v1/sentiment_classify'.freeze
    NLP_KEYWORD = 'https://aip.baidubce.com/rpc/2.0/nlp/v1/keyword'.freeze

    # OCR
    OCR_GENERAL_BASIC = 'https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic'.freeze
    OCR_ACCURATE_BASIC = 'https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic'.freeze
    OCR_GENERAL = 'https://aip.baidubce.com/rest/2.0/ocr/v1/general'.freeze
    OCR_ACCURATE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/accurate'.freeze
    OCR_GENERAL_ENHANCED = 'https://aip.baidubce.com/rest/2.0/ocr/v1/general_enhanced'.freeze
    OCR_HANDWRITING = 'https://aip.baidubce.com/rest/2.0/ocr/v1/handwriting'.freeze
    OCR_WEB_IMAGE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/webimage'.freeze
    OCR_IDCARD = 'https://aip.baidubce.com/rest/2.0/ocr/v1/idcard'.freeze
    OCR_PASSPORT = 'https://aip.baidubce.com/rest/2.0/ocr/v1/passport'.freeze
    OCR_BANKCARD = 'https://aip.baidubce.com/rest/2.0/ocr/v1/bankcard'.freeze
    OCR_DRIVING_LICENSE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/driving_license'.freeze
    OCR_VEHICLE_LICENSE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/vehicle_license'.freeze
    OCR_LICENSE_PLATE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/license_plate'.freeze
    OCR_HK_MACAU_EXITENTRYPERMIT = 'https://aip.baidubce.com/rest/2.0/ocr/v1/HK_Macau_exitentrypermit'.freeze
    OCR_TAIWAN_EXITENTRYPERMIT = 'https://aip.baidubce.com/rest/2.0/ocr/v1/taiwan_exitentrypermit'.freeze
    OCR_HOUSEHOLD_REGISTER = 'https://aip.baidubce.com/rest/2.0/ocr/v1/household_register'.freeze
    OCR_BIRTH_CERTIFICATE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/birth_certificate'.freeze
    OCR_BUSINESS_CARD = 'https://aip.baidubce.com/rest/2.0/ocr/v1/business_card'.freeze
    OCR_BUSINESS_LICENSE = 'https://aip.baidubce.com/rest/2.0/ocr/v1/business_license'.freeze
    OCR_RECEIPT = 'https://aip.baidubce.com/rest/2.0/ocr/v1/receipt'.freeze
    OCR_CUSTOM = 'https://aip.baidubce.com/rest/2.0/solution/v1/iocr/recognise'.freeze
    OCR_FORM_RECOGNIZE = 'https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/request'.freeze
    OCR_FORM_RESULT_GET = 'https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/get_request_result'.freeze

    # voice
    VOICE_TEXT_TO_VOICE = 'https://tsn.baidu.com/text2audio'.freeze

  end
end
