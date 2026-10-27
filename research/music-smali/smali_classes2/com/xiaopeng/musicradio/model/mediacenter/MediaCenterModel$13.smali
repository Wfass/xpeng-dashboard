.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$currentType:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->val$currentType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 981
    iget v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->val$currentType:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1600(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1500(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1700(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    goto :goto_0

    .line 983
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1400(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    .line 996
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1800(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)I

    move-result v0

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1800(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    goto :goto_1

    .line 998
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1800(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1900(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    goto :goto_2

    .line 1001
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1900(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    goto :goto_2

    .line 997
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1900(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    :goto_2
    return-void
.end method
