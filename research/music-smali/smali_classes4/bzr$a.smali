.class public final Lbzr$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lbzs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbzs$b<",
        "Lbzr;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field static final synthetic a:Lbzr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbzr$a;

    invoke-direct {v0}, Lbzr$a;-><init>()V

    sput-object v0, Lbzr$a;->a:Lbzr$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
