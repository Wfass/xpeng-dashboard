.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;
.super Ljava/lang/Object;
.source "SpeechMediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayCommandBean"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private commandType:Ljava/lang/String;

.field private displayId:I

.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "detail"    # Ljava/lang/String;

    .line 477
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->displayId:I

    .line 479
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->pkgName:Ljava/lang/String;

    .line 480
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->commandType:Ljava/lang/String;

    .line 481
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->command:Ljava/lang/String;

    .line 482
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->commandType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->command:Ljava/lang/String;

    return-object v0
.end method
