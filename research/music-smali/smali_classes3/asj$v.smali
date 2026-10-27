.class public Lasj$v;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-wide p1, p0, Lasj$v;->a:J

    .line 307
    iput-boolean p3, p0, Lasj$v;->b:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 311
    iget-wide v0, p0, Lasj$v;->a:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lasj$v;->b:Z

    return v0
.end method
