.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;
.super Ljava/lang/Object;
.source "SpeechVideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPlayCommandBean"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private displayId:I

.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;

    .line 610
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->displayId:I

    .line 612
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->pkgName:Ljava/lang/String;

    .line 613
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->command:Ljava/lang/String;

    .line 614
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    .line 605
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->displayId:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->command:Ljava/lang/String;

    return-object v0
.end method
