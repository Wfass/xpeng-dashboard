.class Layl$2;
.super Ljava/lang/Object;
.source "BluetoothJobs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layl;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/model/bluetooth/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Layl;


# direct methods
.method constructor <init>(Layl;)V
    .locals 0

    .line 52
    iput-object p1, p0, Layl$2;->a:Layl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/b;Lcom/xiaopeng/musicradio/model/bluetooth/b;)I
    .locals 2

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    check-cast p2, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    invoke-virtual {p0, p1, p2}, Layl$2;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;Lcom/xiaopeng/musicradio/model/bluetooth/b;)I

    move-result p1

    return p1
.end method
