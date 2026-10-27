.class public Lasi$d;
.super Ljava/lang/Object;
.source "SearchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lasi$d;->a:Ljava/lang/String;

    .line 78
    iput p2, p0, Lasi$d;->b:I

    .line 79
    iput p3, p0, Lasi$d;->c:I

    .line 80
    iput-boolean p4, p0, Lasi$d;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lasi$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 88
    iget v0, p0, Lasi$d;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 92
    iget v0, p0, Lasi$d;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lasi$d;->d:Z

    return v0
.end method
