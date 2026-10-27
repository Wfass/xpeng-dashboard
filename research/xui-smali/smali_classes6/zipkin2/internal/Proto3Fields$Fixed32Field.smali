.class final Lzipkin2/internal/Proto3Fields$Fixed32Field;
.super Lzipkin2/internal/Proto3Fields$Field;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fixed32Field"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 298
    const-class v0, Lzipkin2/internal/Proto3Fields;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 300
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    .line 301
    nop

    .line 302
    return-void
.end method


# virtual methods
.method sizeInBytes(I)I
    .locals 1
    .param p1, "number"    # I

    .line 305
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    const/4 v0, 0x5

    return v0
.end method
