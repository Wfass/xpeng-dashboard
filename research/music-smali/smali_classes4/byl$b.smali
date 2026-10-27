.class public final Lbyl$b;
.super Ljava/lang/Object;
.source "BaseDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Lbyl;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lbyl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lbyl$b;->a:Lbyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 96
    iget v0, p0, Lbyl$b;->b:I

    return v0
.end method

.method public final a(II)V
    .locals 0

    .line 106
    iput p1, p0, Lbyl$b;->b:I

    .line 107
    iput p2, p0, Lbyl$b;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    .line 99
    iget v0, p0, Lbyl$b;->c:I

    return v0
.end method
