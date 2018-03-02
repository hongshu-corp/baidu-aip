module Baidu::Aip
  module Constants

    # FACE
    FACE_DETECT = 'https://aip.baidubce.com/rest/2.0/face/v2/detect'
    FACE_MATCH = 'https://aip.baidubce.com/rest/2.0/face/v2/match'
    FACE_IDENTIFY = 'https://aip.baidubce.com/rest/2.0/face/v2/identify'
    FACE_VERIFY = 'https://aip.baidubce.com/rest/2.0/face/v2/verify'
    FACE_MULTI_IDENTIFY = 'https://aip.baidubce.com/rest/2.0/face/v2/multi-identify'
    FACE_USER_ADD = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/add'
    FACE_USER_UPDATE = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/update'
    FACE_USER_DELETE = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/delete'
    FACE_USER_GET = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/get'
    FACE_GROUP_GETLIST = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/getlist'
    FACE_GROUP_GETUSERS = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/getusers'
    FACE_GROUP_ADDUSER = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/adduser'
    FACE_GROUP_DELETEUSER = 'https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/deleteuser'


    # IMAGE_AUDIT
    IMAGE_AUDIT_ANTI_PORN = "https://aip.baidubce.com/rest/2.0/antiporn/v1/detect"
    IMAGE_AUDIT_ANTI_PORN_GIF = "https://aip.baidubce.com/rest/2.0/antiporn/v1/detect_gif"
    IMAGE_AUDIT_ANTI_TERROR = "https://aip.baidubce.com/rest/2.0/antiterror/v1/detect"
    IMAGE_AUDIT_USER_DEFINED = "https://aip.baidubce.com/rest/2.0/solution/v1/img_censor/user_defined"
    IMAGE_AUDIT_COMBINATION = "https://aip.baidubce.com/api/v1/solution/direct/img_censor"
    IMAGE_AUDIT_FACE = "https://aip.baidubce.com/rest/2.0/solution/v1/face_audit"


    # IMAGE RECOGNITION
    IMAGE_RECOGNITION_DISH= "https://aip.baidubce.com/rest/2.0/image-classify/v2/dish"
    IMAGE_RECOGNITION_CAR_DETECT = "https://aip.baidubce.com/rest/2.0/image-classify/v1/car"
    IMAGE_RECOGNITION_LOGO_SEARCH = "https://aip.baidubce.com/rest/2.0/image-classify/v2/logo"
    IMAGE_RECOGNITION_LOGO_ADD = "https://aip.baidubce.com/rest/2.0/realtime_search/v1/logo/add"
    IMAGE_RECOGNITION_LOGO = "https://aip.baidubce.com/rest/2.0/realtime_search/v1/logo/delete"
    IMAGE_RECOGNITION_ANIMAL = "https://aip.baidubce.com/rest/2.0/image-classify/v1/animal"
    IMAGE_RECOGNITION_PLANT = "https://aip.baidubce.com/rest/2.0/image-classify/v1/plant"
    IMAGE_RECOGNITION_OBJECT = "https://aip.baidubce.com/rest/2.0/image-classify/v1/object_detect"

    # IMAGE_SEARCH
    IMAGE_SEARCH_SAME_ADD = "https://aip.baidubce.com/rest/2.0/realtime_search/same_hq/add"
    IMAGE_SEARCH_SAME = "https://aip.baidubce.com/rest/2.0/realtime_search/same_hq/search"
    IMAGE_SEARCH_SAME_DELETE = "https://aip.baidubce.com/rest/2.0/realtime_search/same_hq/delete"
    IMAGE_SEARCH_SIMILAR_ADD = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/add"
    IMAGE_SEARCH_SIMILAR = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/search"
    IMAGE_SEARCH_SIMILAR_DELETE = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/delete"
    IMAGE_SEARCH_PRODUCT_ADD = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/product/add"
    IMAGE_SEARCH_PRODUCT_SEARCH = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/product/search"
    IMAGE_SEARCH_PRODUCT_DELETE = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/product/delete"

    KNOWLEDGE_GRAPH_CREATE_TASK = "https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_create"
    KNOWLEDGE_GRAPH_UPDATE_TASK = "https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_update"
    KNOWLEDGE_GRAPH_TASK_INFO = "https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_info"
    KNOWLEDGE_GRAPH_TASK_QUERY = "https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_query"
    KNOWLEDGE_GRAPH_TASK_START = "https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_start"
    KNOWLEDGE_GRAPH_TASK_STATUS = "https://aip.baidubce.com/rest/2.0/kg/v1/pie/task_status"

    # NLP
    NLP_LEXER = "https://aip.baidubce.com/rpc/2.0/nlp/v1/lexer"
    NLP_LEXER_CUSTOM = "https://aip.baidubce.com/rpc/2.0/nlp/v1/lexer_custom"
    NLP_DEP_PARSER = "https://aip.baidubce.com/rpc/2.0/nlp/v1/depparser"
    NLP_WORD_EMBEDDING = "https://aip.baidubce.com/rpc/2.0/nlp/v2/word_emb_vec"
    NLP_DNNLM_CN = "https://aip.baidubce.com/rpc/2.0/nlp/v2/dnnlm_cn"
    NLP_WORD_SIM_EMBEDDING = "https://aip.baidubce.com/rpc/2.0/nlp/v2/word_emb_sim"
    NLP_SIMNET = "https://aip.baidubce.com/rpc/2.0/nlp/v2/simnet"
    NLP_COMMENT_TAG = "https://aip.baidubce.com/rpc/2.0/nlp/v2/comment_tag"
    NLP_SENTIMENT_CLASSIFY = "https://aip.baidubce.com/rpc/2.0/nlp/v1/sentiment_classify"
    NLP_KEYWORD = "https://aip.baidubce.com/rpc/2.0/nlp/v1/keyword"
    NLP_GENERAL_BASIC = "https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic"

    # OCR
    OCR_ACCURATE_BASIC = "https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic"
    OCR_GENERAL = "https://aip.baidubce.com/rest/2.0/ocr/v1/general"
    OCR_ACCURATE = "https://aip.baidubce.com/rest/2.0/ocr/v1/accurate"
    OCR_GENERAL_ENHANCED = "https://aip.baidubce.com/rest/2.0/ocr/v1/general_enhanced"
    OCR_WEB_IMAGE = "https://aip.baidubce.com/rest/2.0/ocr/v1/webimage"
    OCR_IDCARD = "https://aip.baidubce.com/rest/2.0/ocr/v1/idcard"
    OCR_BANKCARD = "https://aip.baidubce.com/rest/2.0/ocr/v1/bankcard"
    OCR_DRIVING_LICENSE = "https://aip.baidubce.com/rest/2.0/ocr/v1/driving_license"
    OCR_VEHICLE_LICENSE = "https://aip.baidubce.com/rest/2.0/ocr/v1/vehicle_license"
    OCR_LICENSE_PLATE = "https://aip.baidubce.com/rest/2.0/ocr/v1/license_plate"
    OCR_BUSINESS_LICENSE = "https://aip.baidubce.com/rest/2.0/ocr/v1/business_license"
    OCR_RECEIPT = "https://aip.baidubce.com/rest/2.0/ocr/v1/receipt"
    OCR_CUSTOM = "https://aip.baidubce.com/rest/2.0/solution/v1/iocr/recognise"
    OCR_FORM_RECOGNIZE = "https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/request"
    OCR_FORM_RESULT_GET = "https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/get_request_result"

  end
end
