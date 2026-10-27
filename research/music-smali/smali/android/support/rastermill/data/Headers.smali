.class public interface abstract Landroid/support/rastermill/data/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final DEFAULT:Landroid/support/rastermill/data/Headers;

.field public static final NONE:Landroid/support/rastermill/data/Headers;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/support/rastermill/data/Headers$1;

    invoke-direct {v0}, Landroid/support/rastermill/data/Headers$1;-><init>()V

    sput-object v0, Landroid/support/rastermill/data/Headers;->NONE:Landroid/support/rastermill/data/Headers;

    .line 29
    new-instance v0, Landroid/support/rastermill/data/LazyHeaders$Builder;

    invoke-direct {v0}, Landroid/support/rastermill/data/LazyHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/rastermill/data/LazyHeaders$Builder;->build()Landroid/support/rastermill/data/LazyHeaders;

    move-result-object v0

    sput-object v0, Landroid/support/rastermill/data/Headers;->DEFAULT:Landroid/support/rastermill/data/Headers;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
