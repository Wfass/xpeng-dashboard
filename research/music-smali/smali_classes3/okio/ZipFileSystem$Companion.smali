.class final Lokio/ZipFileSystem$Companion;
.super Ljava/lang/Object;
.source "ZipFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/ZipFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccc;)V
    .locals 0

    invoke-direct {p0}, Lokio/ZipFileSystem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROOT()Lokio/Path;
    .locals 1

    .line 168
    invoke-static {}, Lokio/ZipFileSystem;->access$getROOT$cp()Lokio/Path;

    move-result-object v0

    return-object v0
.end method
