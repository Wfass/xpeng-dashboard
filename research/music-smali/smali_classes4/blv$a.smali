.class public Lblv$a;
.super Ljava/lang/Object;
.source "GlobalProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblv;
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lblv$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lblv$a;->a:Z

    return v0
.end method
