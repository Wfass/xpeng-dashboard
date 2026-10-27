.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$4;
.super Ljava/lang/Object;
.source "SessionMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 939
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 948
    return-void
.end method

.method public onLoadSuccess(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 943
    return-void
.end method
