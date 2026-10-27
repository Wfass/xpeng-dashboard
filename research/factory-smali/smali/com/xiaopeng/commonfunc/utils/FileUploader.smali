.class public Lcom/xiaopeng/commonfunc/utils/FileUploader;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;
    }
.end annotation


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "XIAOPENG"

.field private static final DUMMY:I = 0x0

.field public static final ENCRYPT_FILE_WITH_XP_KEY:I = 0x2

.field public static final ENCRYPT_FILE_WITH_ZIP_KEY:I = 0x1

.field private static final STEP_WAITING_UDISK_INSERT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FileUploader"

.field public static final UPLOAD_TO_CLOUD:I = 0x1

.field public static final UPLOAD_TO_UDISK:I = 0x2


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mEncryptMethod:I

.field private mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

.field private mStep:I

.field private mUploadFileName:Ljava/lang/String;

.field private mUploadPath:[Ljava/lang/String;

.field private mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mStep:I

    .line 78
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/utils/FileUploader;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 24
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/utils/FileUploader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mStep:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/utils/FileUploader;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mUploadPath:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mUploadFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/commonfunc/utils/FileUploader;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 24
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mEncryptMethod:I

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    return-object v0
.end method

.method private finalizeDialog()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->dismiss()V

    .line 214
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 56
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$3fCR8zcQW6ht9amfYntbhs2qKzI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$3fCR8zcQW6ht9amfYntbhs2qKzI;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public static synthetic lambda$copyData2Udisk$2(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "udiskPath"    # Ljava/lang/String;
    .param p2, "filePaths"    # [Ljava/lang/String;
    .param p3, "uploadFileName"    # Ljava/lang/String;
    .param p4, "encrypthMethod"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->zipNEncryptFiles(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    move-result-object v0

    .line 112
    .local v0, "encryptZipFile":Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->finalizeDialog()V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    iget-object v2, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    invoke-interface {v1}, Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;->onFailure()V

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$copyData2Udisk$3(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "udiskPath"    # Ljava/lang/String;
    .param p2, "uploadFileName"    # Ljava/lang/String;
    .param p3, "filePaths"    # [Ljava/lang/String;
    .param p4, "encrypthMethod"    # I

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v2, 0x2713

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/commonfunc/R$string;->tips_insert_udisk:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show()V

    .line 102
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mUploadFileName:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mUploadPath:[Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mEncryptMethod:I

    .line 105
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mStep:I

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/commonfunc/R$string;->tips_copying_data_2_udisk:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show()V

    .line 109
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$KMAkuny3lng3Mmd4Pi3d_PYaMx4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$KMAkuny3lng3Mmd4Pi3d_PYaMx4;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 123
    :goto_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/commonfunc/utils/FileUploader;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mStep:I

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mFileUploadCallback:Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    invoke-interface {v0}, Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;->onFailure()V

    .line 65
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V
    .locals 3

    .line 57
    new-instance v0, Lcom/xiaopeng/xui/app/XLoadingDialog;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/commonfunc/R$style;->XAppTheme_XDialog_Loading:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XLoadingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->create()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setCancelable(Z)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    new-instance v1, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$4UWxqg5BTXMV8BQGDVtGcIu1GRs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$4UWxqg5BTXMV8BQGDVtGcIu1GRs;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setOnTimeOutListener(Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setTimeOutCheck(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setTimeOut(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7ff

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 70
    return-void
.end method

.method public static synthetic lambda$uploadFile2Cloud$4(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "paths"    # [Ljava/lang/String;
    .param p3, "uploadFileName"    # Ljava/lang/String;
    .param p4, "encrypthMethod"    # I
    .param p5, "app"    # Landroid/app/Application;

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->zipNEncryptFiles(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    move-result-object v0

    .line 170
    .local v0, "encryptZipFile":Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;
    iget-object v1, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;)V

    invoke-static {p5, v1, v2}, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper;->uploadFile2Oss(Landroid/app/Application;Ljava/lang/String;Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;)V

    .line 198
    return-void
.end method

.method private zipNEncryptFiles(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "paths"    # [Ljava/lang/String;
    .param p3, "uploadFileName"    # Ljava/lang/String;
    .param p4, "encrypthMethod"    # I

    .line 131
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Lcom/xiaopeng/commonfunc/utils/FileUploader$1;)V

    .line 132
    .local v0, "res":Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;
    packed-switch p4, :pswitch_data_0

    goto/16 :goto_2

    .line 149
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/TimeUtil;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/cache/temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "tempFile":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".xp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "destFile":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/cache/temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->mkDir(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    invoke-static {p2, v3, v1}, Lcom/xiaopeng/commonfunc/utils/ZipUtil;->zipFiles([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "@)!%Xp0109Motors"

    .line 154
    invoke-static {v5, v3, v4}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    iput-object v4, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    .line 156
    iput-object v1, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->password:Ljava/lang/String;

    .line 158
    :cond_0
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "tempFile":Ljava/lang/String;
    .end local v4    # "destFile":Ljava/lang/String;
    goto :goto_2

    .line 135
    :pswitch_1
    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mDirection:I

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_2

    .line 136
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "vin":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "XIAOPENG"

    .end local v1    # "vin":Ljava/lang/String;
    :goto_0
    move-object v1, v2

    .line 138
    .local v1, "password":Ljava/lang/String;
    goto :goto_1

    .line 139
    .end local v1    # "password":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "password":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/TimeUtil;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "zipFile":Ljava/lang/String;
    invoke-static {p2, v2, v1}, Lcom/xiaopeng/commonfunc/utils/ZipUtil;->zipFiles([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    iput-object v2, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    .line 145
    iput-object v1, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->password:Ljava/lang/String;

    .line 161
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "zipFile":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copyData2Udisk([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "filePaths"    # [Ljava/lang/String;
    .param p2, "uploadFileName"    # Ljava/lang/String;
    .param p3, "encrypthMethod"    # I

    .line 94
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "FileUploader"

    const-string v1, "copy diagnosis files to udisk"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "udiskPath":Ljava/lang/String;
    new-instance v7, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$PkZ6t0H_S5vfQaVsBac7Nlvysb8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$PkZ6t0H_S5vfQaVsBac7Nlvysb8;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v7}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 124
    .end local v0    # "udiskPath":Ljava/lang/String;
    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "FileUploader"

    const-string v1, "uploadFile2Cloud wrong direction [%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->finalizeDialog()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mXLoadingDialog:Lcom/xiaopeng/xui/app/XLoadingDialog;

    .line 208
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 52
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mDirection:I

    .line 53
    return-void
.end method

.method public uploadFile2Cloud(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "paths"    # [Ljava/lang/String;
    .param p4, "uploadFileName"    # Ljava/lang/String;
    .param p5, "encrypthMethod"    # I

    .line 166
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$FileUploader$CODPXD0rN4CVzQRU0bzO106nKc4;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 200
    :cond_0
    const-string v0, "FileUploader"

    const-string v2, "uploadFile2Cloud wrong direction [%d]"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader;->mDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_0
    return-void
.end method
