.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$1;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$1;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlaybackControl(II)I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$1;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    const/4 p1, 0x0

    return p1
.end method

.method public OnSetFavorite(ZLjava/lang/String;)I
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSetFavorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaCenterModel"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p2

    invoke-virtual {p2}, Laqr;->b()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p2

    invoke-virtual {p2}, Lbdx;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 182
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v0, Lblp;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lblp;

    invoke-interface {p2, p1}, Lblp;->favMusicOrNot(Z)Z

    goto :goto_0

    .line 184
    :cond_1
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->title_dialog_program_login:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 185
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v0, Lbjs;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbjs;

    invoke-interface {p2, p1}, Lbjs;->favMusicOrNot(Z)Z

    goto :goto_0

    .line 178
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v0, Lbfe;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbfe;

    invoke-interface {p2, p1}, Lbfe;->favMusicOrNot(Z)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public OnSwitchSource(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Laqr;->b(I)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, v0}, Laqr;->b(I)V

    :goto_0
    return v0
.end method
