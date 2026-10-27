.class Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$1;
.super Ljava/lang/Object;
.source "DefaultMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalChanged()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V

    .line 85
    return-void
.end method
