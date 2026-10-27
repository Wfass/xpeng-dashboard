.class public Lash$d;
.super Ljava/lang/Object;
.source "ProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lash$d;->a:I

    .line 134
    iput p2, p0, Lash$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 138
    iget v0, p0, Lash$d;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 142
    iget v0, p0, Lash$d;->a:I

    return v0
.end method
