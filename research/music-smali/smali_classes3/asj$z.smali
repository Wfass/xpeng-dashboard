.class public Lasj$z;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-wide p1, p0, Lasj$z;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 273
    iget-wide v0, p0, Lasj$z;->a:J

    return-wide v0
.end method
