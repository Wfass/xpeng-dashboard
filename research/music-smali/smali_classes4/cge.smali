.class public Lcge;
.super Ljava/io/OutputStream;
.source "MqttOutputStream.java"


# static fields
.field private static final a:Ljava/lang/String; = "cge"

.field private static final b:Lcgw;


# instance fields
.field private c:Lcex;

.field private d:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Lcge;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcge;->b:Lcgw;

    return-void
.end method

.method public constructor <init>(Lcex;Ljava/io/OutputStream;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcge;->c:Lcex;

    .line 40
    iput-object p1, p0, Lcge;->c:Lcex;

    .line 41
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public a(Lcgs;)V
    .locals 5

    .line 74
    invoke-virtual {p1}, Lcgs;->k()[B

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcgs;->z_()[B

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 79
    iget-object v2, p0, Lcge;->c:Lcex;

    array-length v0, v0

    invoke-virtual {v2, v0}, Lcex;->b(I)V

    move v0, v4

    .line 83
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 91
    sget-object v0, Lcge;->b:Lcgw;

    sget-object v1, Lcge;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "write"

    const-string v3, "529"

    invoke-interface {v0, v1, p1, v3, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_0
    array-length v2, v1

    sub-int/2addr v2, v0

    const/16 v3, 0x400

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    iget-object v3, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/lit16 v0, v0, 0x400

    .line 87
    iget-object v3, p0, Lcge;->c:Lcex;

    invoke-virtual {v3, v2}, Lcex;->b(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 54
    iget-object v0, p0, Lcge;->c:Lcex;

    array-length p1, p1

    invoke-virtual {v0, p1}, Lcex;->b(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcge;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 59
    iget-object p1, p0, Lcge;->c:Lcex;

    invoke-virtual {p1, p3}, Lcex;->b(I)V

    return-void
.end method
