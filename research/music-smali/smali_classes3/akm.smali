.class public final Lakm;
.super Laki;
.source "OffsetEdgeTreatment.java"


# instance fields
.field private final a:Laki;

.field private final b:F


# direct methods
.method public constructor <init>(Laki;F)V
    .locals 0

    .line 27
    invoke-direct {p0}, Laki;-><init>()V

    .line 28
    iput-object p1, p0, Lakm;->a:Laki;

    .line 29
    iput p2, p0, Lakm;->b:F

    return-void
.end method


# virtual methods
.method public a(FFFLakr;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lakm;->a:Laki;

    iget v1, p0, Lakm;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Laki;->a(FFFLakr;)V

    return-void
.end method

.method e()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lakm;->a:Laki;

    invoke-virtual {v0}, Laki;->e()Z

    move-result v0

    return v0
.end method
