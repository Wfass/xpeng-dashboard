.class Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptZipFile"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Lcom/xiaopeng/commonfunc/utils/FileUploader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;
    .param p2, "x1"    # Lcom/xiaopeng/commonfunc/utils/FileUploader$1;

    .line 216
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;-><init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V

    return-void
.end method
