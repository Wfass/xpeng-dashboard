.class Lbix$2$1;
.super Ljava/lang/Object;
.source "MusicReplayDownBase.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbix$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbix$2;


# direct methods
.method constructor <init>(Lbix$2;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lbix$2$1;->a:Lbix$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 284
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/a;->a()Lcom/xiaopeng/musicradio/model/dui/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/xiaopeng/musicradio/model/dui/a;->b(Lcom/xiaopeng/musicradio/model/dui/a$a;)V

    const-string p2, "command://musicradio.submit"

    .line 286
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 287
    new-instance p1, Lbix$2$1$1;

    invoke-direct {p1, p0}, Lbix$2$1$1;-><init>(Lbix$2$1;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p2, "command://musicradio.cancel"

    .line 293
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "command://musicradio.timeout"

    .line 294
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "command://musicradio.interrupt"

    .line 295
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 296
    :cond_1
    new-instance p1, Lbix$2$1$2;

    invoke-direct {p1, p0}, Lbix$2$1$2;-><init>(Lbix$2$1;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
