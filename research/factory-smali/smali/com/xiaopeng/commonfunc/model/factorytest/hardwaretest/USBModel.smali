.class public Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;
.super Ljava/lang/Object;
.source "USBModel.java"


# static fields
.field private static final DCM_USB_PATH:Ljava/lang/String;

.field private static final DVR_USB_PATH:Ljava/lang/String;

.field private static final FACE_USB_PATH:Ljava/lang/String;

.field private static final MEDIA_USB_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "USBModel"

.field public static final TBOX_PRODUCT_ID:I = 0x435

.field public static final TBOX_VENDOR_ID:I = 0x2c7c


# instance fields
.field private mIsDcmHasCheck:Z

.field private mIsDvrHasCheck:Z

.field private mIsFaceHasCheck:Z

.field private mIsMediaHasCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "FACE_USB"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->FACE_USB_PATH:Ljava/lang/String;

    .line 18
    const-string v0, "DVR_USB"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->DVR_USB_PATH:Ljava/lang/String;

    .line 19
    const-string v0, "DCM_USB"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->DCM_USB_PATH:Ljava/lang/String;

    .line 20
    const-string v0, "MEDIA_USB"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->MEDIA_USB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsFaceHasCheck:Z

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsDvrHasCheck:Z

    .line 23
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsDcmHasCheck:Z

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsMediaHasCheck:Z

    .line 30
    return-void
.end method

.method private isUSBInsert(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public isDcmHasCheck()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsDcmHasCheck:Z

    return v0
.end method

.method public isDcmUSBInsert()Z
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->DCM_USB_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->isUSBInsert(Ljava/lang/String;)Z

    move-result v0

    .line 55
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsDcmHasCheck:Z

    .line 58
    :cond_0
    return v0
.end method

.method public isDvrHasCheck()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsDvrHasCheck:Z

    return v0
.end method

.method public isDvrUSBInsert()Z
    .locals 2

    .line 46
    sget-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->DVR_USB_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->isUSBInsert(Ljava/lang/String;)Z

    move-result v0

    .line 47
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsDvrHasCheck:Z

    .line 50
    :cond_0
    return v0
.end method

.method public isFaceHasCheck()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsFaceHasCheck:Z

    return v0
.end method

.method public isFaceUSBInsert()Z
    .locals 2

    .line 38
    sget-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->FACE_USB_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->isUSBInsert(Ljava/lang/String;)Z

    move-result v0

    .line 39
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsFaceHasCheck:Z

    .line 42
    :cond_0
    return v0
.end method

.method public isMediaHasCheck()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsMediaHasCheck:Z

    return v0
.end method

.method public isMediaUSBInsert()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->MEDIA_USB_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->isUSBInsert(Ljava/lang/String;)Z

    move-result v0

    .line 63
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->mIsMediaHasCheck:Z

    .line 66
    :cond_0
    return v0
.end method

.method public isMediaUSBInsertForRW()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->MEDIA_USB_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/USBModel;->isUSBInsert(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTboxAttached(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const/16 v0, 0x2c7c

    const/16 v1, 0x435

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isUsbDeviceAttached(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method
