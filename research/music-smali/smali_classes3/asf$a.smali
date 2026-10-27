.class public Lasf$a;
.super Ljava/lang/Object;
.source "NetRadioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lasf$a;->a:I

    .line 31
    iput p2, p0, Lasf$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 35
    iget v0, p0, Lasf$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 39
    iget v0, p0, Lasf$a;->b:I

    return v0
.end method
