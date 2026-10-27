.class public Lasf$c;
.super Ljava/lang/Object;
.source "NetRadioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lasf$c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 51
    iget v0, p0, Lasf$c;->a:I

    return v0
.end method
