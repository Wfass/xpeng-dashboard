.class public Larv$a;
.super Ljava/lang/Object;
.source "ApplicationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Larv$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Larv$a;->a:Z

    return v0
.end method
