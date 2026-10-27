.class public final Lkotlin/ranges/IntProgression$a;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/ranges/IntProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccc;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/ranges/IntProgression$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lkotlin/ranges/IntProgression;
    .locals 1

    .line 132
    new-instance v0, Lkotlin/ranges/IntProgression;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    return-object v0
.end method
