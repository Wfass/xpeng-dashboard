.class public Lcep;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# instance fields
.field private dup:Z

.field private messageId:I

.field private mutable:Z

.field private payload:[B

.field private qos:I

.field private retained:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcep;->mutable:Z

    .line 29
    iput v0, p0, Lcep;->qos:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcep;->retained:Z

    .line 31
    iput-boolean v0, p0, Lcep;->dup:Z

    .line 56
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcep;->a([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcep;->mutable:Z

    .line 29
    iput v0, p0, Lcep;->qos:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcep;->retained:Z

    .line 31
    iput-boolean v0, p0, Lcep;->dup:Z

    .line 65
    invoke-virtual {p0, p1}, Lcep;->a([B)V

    return-void
.end method

.method public static a(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcep;->dup:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcep;->d()V

    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcep;->payload:[B

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcep;->payload:[B

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcep;->d()V

    .line 181
    invoke-static {p1}, Lcep;->a(I)V

    .line 182
    iput p1, p0, Lcep;->qos:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcep;->d()V

    .line 126
    iput-boolean p1, p0, Lcep;->retained:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcep;->retained:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 135
    iget v0, p0, Lcep;->qos:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcep;->messageId:I

    return-void
.end method

.method protected d()V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcep;->mutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcep;->dup:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcep;->payload:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
