.class Lbcw$1;
.super Ljava/lang/Object;
.source "LiveDataProvider.java"

# interfaces
.implements Lbcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Lbcw$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcw$b;

.field final synthetic b:Lbcw;


# direct methods
.method constructor <init>(Lbcw;Lbcw$b;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbcw$1;->b:Lbcw;

    iput-object p2, p0, Lbcw$1;->a:Lbcw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lbcw$1;->a:Lbcw$b;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1, p2}, Lbcw$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lbcw$1;->a:Lbcw$b;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Lbcw$b;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method
