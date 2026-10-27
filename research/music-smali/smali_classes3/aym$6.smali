.class Laym$6;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0

    .line 830
    iput-object p1, p0, Laym$6;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 833
    iget-object p1, p0, Laym$6;->a:Laym;

    invoke-static {p1}, Laym;->f(Laym;)I

    move-result p1

    const/16 v0, 0x96

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Laym$6;->a:Laym;

    invoke-static {p1}, Laym;->l(Laym;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "BluetoothMusicService"

    const-string v0, "reset playstate to playing as a2dp state is streaming though playstate is paused, but now deprecated"

    .line 834
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 830
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Laym$6;->a(Ljava/lang/Long;)V

    return-void
.end method
