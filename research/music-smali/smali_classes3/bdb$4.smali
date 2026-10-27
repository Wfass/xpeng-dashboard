.class Lbdb$4;
.super Ljava/lang/Object;
.source "RadioDataProvider.java"

# interfaces
.implements Lbcv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdb;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdb;


# direct methods
.method constructor <init>(Lbdb;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lbdb$4;->a:Lbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lbdb$4;->a:Lbdb;

    invoke-virtual {v0, p1}, Lbdb;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method
