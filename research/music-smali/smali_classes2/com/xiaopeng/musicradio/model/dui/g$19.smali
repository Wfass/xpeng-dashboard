.class Lcom/xiaopeng/musicradio/model/dui/g$19;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$19;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 143
    invoke-interface {v0}, Laqs;->a()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->play()V

    :goto_0
    return-void
.end method
