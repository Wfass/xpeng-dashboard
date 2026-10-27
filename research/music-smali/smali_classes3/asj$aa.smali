.class public Lasj$aa;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "aa"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(JIZ)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-wide p1, p0, Lasj$aa;->a:J

    .line 284
    iput p3, p0, Lasj$aa;->b:I

    .line 285
    iput-boolean p4, p0, Lasj$aa;->c:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 289
    iget-wide v0, p0, Lasj$aa;->a:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 293
    iget v0, p0, Lasj$aa;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lasj$aa;->c:Z

    return v0
.end method
