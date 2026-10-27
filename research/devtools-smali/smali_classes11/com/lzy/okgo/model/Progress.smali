.class public Lcom/lzy/okgo/model/Progress;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/model/Progress$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x582cbacdd9906bc3L


# instance fields
.field public currentSize:J

.field public date:J

.field public exception:Ljava/lang/Throwable;

.field public extra1:Ljava/io/Serializable;

.field public extra2:Ljava/io/Serializable;

.field public extra3:Ljava/io/Serializable;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public fraction:F

.field public transient mq:J

.field private transient mr:J

.field private transient ms:J

.field private transient mt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public priority:I

.field public request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "*+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public tag:Ljava/lang/String;

.field public totalSize:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->ms:J

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->date:J

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->mt:Ljava/util/List;

    .line 93
    return-void
.end method

.method public static a(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;
    .locals 6

    .line 100
    iput-wide p3, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 101
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 102
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->mr:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->mr:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 105
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->ms:J

    sub-long v0, p1, v0

    sget-wide v2, Lcom/lzy/okgo/a;->lj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_3

    .line 107
    :cond_1
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->ms:J

    sub-long v0, p1, v0

    .line 108
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const-wide/16 v0, 0x1

    .line 109
    :cond_2
    iget-wide v4, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    long-to-float p3, p3

    div-float/2addr v4, p3

    iput v4, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 110
    iget-wide p3, p0, Lcom/lzy/okgo/model/Progress;->mr:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr p3, v4

    div-long/2addr p3, v0

    invoke-direct {p0, p3, p4}, Lcom/lzy/okgo/model/Progress;->g(J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/lzy/okgo/model/Progress;->mq:J

    .line 111
    iput-wide p1, p0, Lcom/lzy/okgo/model/Progress;->ms:J

    .line 112
    iput-wide v2, p0, Lcom/lzy/okgo/model/Progress;->mr:J

    .line 113
    if-eqz p5, :cond_3

    .line 114
    invoke-interface {p5, p0}, Lcom/lzy/okgo/model/Progress$a;->a(Lcom/lzy/okgo/model/Progress;)V

    .line 117
    :cond_3
    return-object p0
.end method

.method public static a(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;
    .locals 6

    .line 96
    iget-wide v3, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/lzy/okgo/model/Progress;->a(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;

    move-result-object p0

    return-object p0
.end method

.method private g(J)J
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->mt:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/lzy/okgo/model/Progress;->mt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    .line 124
    iget-object p1, p0, Lcom/lzy/okgo/model/Progress;->mt:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_0
    const-wide/16 p1, 0x0

    .line 127
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->mt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    .line 128
    long-to-float p1, p1

    add-float/2addr p1, v1

    float-to-long p1, p1

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->mt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 200
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 201
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    check-cast p1, Lcom/lzy/okgo/model/Progress;

    .line 204
    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 201
    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress{fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->mq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
