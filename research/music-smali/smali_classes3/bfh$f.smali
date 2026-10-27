.class public Lbfh$f;
.super Ljava/lang/Object;
.source "GlobalMusicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lbfh$f;->a:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lbfh$f;->a:Z

    .line 14
    iput-boolean p2, p0, Lbfh$f;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lbfh$f;->b:Z

    return v0
.end method
