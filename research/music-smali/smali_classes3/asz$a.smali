.class Lasz$a;
.super Ljava/lang/Object;
.source "CollectLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lasz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lasz;

    invoke-direct {v0}, Lasz;-><init>()V

    sput-object v0, Lasz$a;->a:Lasz;

    return-void
.end method
