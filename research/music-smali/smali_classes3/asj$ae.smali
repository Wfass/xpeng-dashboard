.class public Lasj$ae;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ae"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput p1, p0, Lasj$ae;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 499
    iget v0, p0, Lasj$ae;->a:I

    return v0
.end method
