.class public abstract Lcgf;
.super Lcgs;
.source "MqttPersistableWireMessage.java"

# interfaces
.implements Lceq;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcgs;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcgf;->k()[B

    move-result-object v0
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcer;

    invoke-virtual {v0}, Lceo;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcer;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcgf;->a()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()[B
    .locals 2

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcgf;->z_()[B

    move-result-object v0
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcer;

    invoke-virtual {v0}, Lceo;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcer;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
