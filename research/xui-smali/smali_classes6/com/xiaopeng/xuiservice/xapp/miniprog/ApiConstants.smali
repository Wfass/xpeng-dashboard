.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;
.super Ljava/lang/Object;
.source "ApiConstants.java"


# static fields
.field public static final ALIPAY_MINI_DETAIL_URL:Ljava/lang/String;

.field public static final ALIPAY_MINI_LIST_PREFEX:Ljava/lang/String; = "?alipay_version="

.field public static final ALIPAY_MINI_LIST_URL:Ljava/lang/String;

.field public static final ALIPAY_MINI_ORDER_CHECK_URL:Ljava/lang/String;

.field public static final ALIPAY_MINI_UPLOAD_DATA_URL:Ljava/lang/String;

.field public static final ALIPAY_REGISTER_URL:Ljava/lang/String;

.field private static final API_PRE:I = 0x1

.field private static final API_PRODUCT:I = 0x2

.field private static API_SECRET_DECRPTED:Ljava/lang/String; = null

.field private static final API_SECRET_ENCRPTED:Ljava/lang/String; = "0000033e0020db0b50660000000010ef217e9599365385ee7bd62cdbfd228c6cfcbf52c6ef9e21770b2ebf9e4a02c102b87c439da1a73db21c8b85d7d0edb87a12ba0ab25e1c1927475739802c9b9a1c3da07843c315e1b9125ed12c858811ff914775327e6e7a9acb117696f58e1116aa8e1d5061a017e7353449696b1d6c3ccf7116518a7ec73b72b43e892c923304301e83875845040073e855cf576e55"

.field private static API_SECRET_OFFICIAL_DECRPTED:Ljava/lang/String; = null

.field private static final API_SECRET_OFFICIAL_ENCRPTED:Ljava/lang/String; = "0000034e0020510c50660000000010ecc2e822166d1191443d6c415ff808325ed7eb185e64ccc029e52e0ced0e4fa06d735fd1021b1b7556bfc18b6025b7fc5e900afe0bda83cf94294b6c62c7b587aac1cf2883820c1996134da210db62911fd052a1e72790d342d380ed007435dbf2a22d536056531f3bab8b2482f495bf8d693fa5dc70077423437d38e25f93887c3d90b051630c392693cdfa01b77f1d"

.field private static final API_TEST:I = 0x0

.field public static final APP_STORE_HOST:Ljava/lang/String; = "https://xmart.xiaopeng.com/app-store"

.field public static final APP_STORE_HOST_PRE:Ljava/lang/String; = "https://xmart.deploy-test.xiaopeng.com/app-store"

.field public static final APP_STORE_HOST_TEST:Ljava/lang/String; = "https://10.0.13.28:18553/app-store"

.field public static final MINI_DETAIL_URL:Ljava/lang/String; = "/v1/applet/details"

.field public static final MINI_DETAIL_URL_PARAMS:Ljava/lang/String; = "ali_ids"

.field public static final MINI_LIST_URL:Ljava/lang/String; = "/v1/applet/homePage"

.field public static final MINI_ORDER_CHECK_URL:Ljava/lang/String; = "/v1/alipay/ampe/order/valid"

.field public static final MINI_UPLOAD_DATA_URL:Ljava/lang/String; = "/v1/alipay/ampe/devicedata/report"

.field public static final REGISTER_URL:Ljava/lang/String; = "/v2/alipay/register"

.field public static XP_ALIPAY_HEAD:Ljava/lang/String;

.field static env:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_DECRPTED:Ljava/lang/String;

    .line 30
    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_OFFICIAL_DECRPTED:Ljava/lang/String;

    .line 34
    const-string v0, "XP-As-Alipay-Version"

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->XP_ALIPAY_HEAD:Ljava/lang/String;

    .line 40
    const-string v0, "persist.sys.miniprogram.env.switch"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->env:I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/alipay/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_REGISTER_URL:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/applet/homePage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_LIST_URL:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/applet/details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_DETAIL_URL:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/alipay/ampe/devicedata/report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_UPLOAD_DATA_URL:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v1/alipay/ampe/order/valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_ORDER_CHECK_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAPI_SECRET_OFFICIAL_DECRPTED()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_OFFICIAL_DECRPTED:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "0000034e0020510c50660000000010ecc2e822166d1191443d6c415ff808325ed7eb185e64ccc029e52e0ced0e4fa06d735fd1021b1b7556bfc18b6025b7fc5e900afe0bda83cf94294b6c62c7b587aac1cf2883820c1996134da210db62911fd052a1e72790d342d380ed007435dbf2a22d536056531f3bab8b2482f495bf8d693fa5dc70077423437d38e25f93887c3d90b051630c392693cdfa01b77f1d"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/KmsUtil;->getDecryptedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_OFFICIAL_DECRPTED:Ljava/lang/String;

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_OFFICIAL_DECRPTED:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    .line 70
    sget v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->env:I

    packed-switch v0, :pswitch_data_0

    .line 78
    const-string v0, "https://xmart.xiaopeng.com/app-store"

    return-object v0

    .line 76
    :pswitch_0
    const-string v0, "https://xmart.xiaopeng.com/app-store"

    return-object v0

    .line 74
    :pswitch_1
    const-string v0, "https://xmart.deploy-test.xiaopeng.com/app-store"

    return-object v0

    .line 72
    :pswitch_2
    const-string v0, "https://10.0.13.28:18553/app-store"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSecret()Ljava/lang/String;
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->env:I

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getAPI_SECRET_OFFICIAL_DECRPTED()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getAPI_SECRET_OFFICIAL_DECRPTED()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_DECRPTED:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "0000033e0020db0b50660000000010ef217e9599365385ee7bd62cdbfd228c6cfcbf52c6ef9e21770b2ebf9e4a02c102b87c439da1a73db21c8b85d7d0edb87a12ba0ab25e1c1927475739802c9b9a1c3da07843c315e1b9125ed12c858811ff914775327e6e7a9acb117696f58e1116aa8e1d5061a017e7353449696b1d6c3ccf7116518a7ec73b72b43e892c923304301e83875845040073e855cf576e55"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/KmsUtil;->getDecryptedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_DECRPTED:Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->API_SECRET_DECRPTED:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
