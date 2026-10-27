.class Lbcw$d;
.super Lbcw$c;
.source "LiveDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lbcw$b;)V
    .locals 0

    .line 403
    invoke-direct {p0, p2}, Lbcw$c;-><init>(Lbcw$b;)V

    .line 404
    iput-object p1, p0, Lbcw$d;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 409
    iget-object v0, p0, Lbcw$d;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p0, v0}, Lbcw$d;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method
