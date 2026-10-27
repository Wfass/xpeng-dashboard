.class public final Lokhttp3/OkHttp;
.super Ljava/lang/Object;
.source "OkHttp.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/OkHttp;

.field public static final VERSION:Ljava/lang/String; = "4.10.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/OkHttp;

    invoke-direct {v0}, Lokhttp3/OkHttp;-><init>()V

    sput-object v0, Lokhttp3/OkHttp;->INSTANCE:Lokhttp3/OkHttp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
