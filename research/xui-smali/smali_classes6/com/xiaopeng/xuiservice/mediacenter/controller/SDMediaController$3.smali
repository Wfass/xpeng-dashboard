.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$3;
.super Ljava/lang/Object;
.source "SDMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionDestroyed()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->updateMediaController(Landroid/media/session/MediaController;)V

    .line 258
    return-void
.end method
