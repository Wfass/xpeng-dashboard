.class final Laod$a;
.super Ljava/lang/Object;
.source "CounterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Laod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Laod;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laod;-><init>(Laod$1;)V

    sput-object v0, Laod$a;->a:Laod;

    return-void
.end method

.method static synthetic a()Laod;
    .locals 1

    .line 18
    sget-object v0, Laod$a;->a:Laod;

    return-object v0
.end method
