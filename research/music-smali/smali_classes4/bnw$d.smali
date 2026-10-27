.class public Lbnw$d;
.super Ljava/lang/Object;
.source "SearchCommenEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbnw$d;->a:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lbnw$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lbnw$d;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lbnw$d;->a:Ljava/lang/String;

    return-object v0
.end method
