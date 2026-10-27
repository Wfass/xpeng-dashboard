.class Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;
.super Ljava/lang/Object;
.source "MuteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MuteDetail"
.end annotation


# instance fields
.field private mute:Z

.field private otherPlayPackages:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;
    .param p2, "mute"    # Z
    .param p3, "otherPlayPackages"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->mute:Z

    .line 192
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->otherPlayPackages:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public getOtherPlayPackages()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->otherPlayPackages:Ljava/lang/String;

    return-object v0
.end method

.method public isMute()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager$MuteDetail;->mute:Z

    return v0
.end method
