.class Layt$b;
.super Ljava/lang/Object;
.source "MusicFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Layt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Layt;

    invoke-direct {v0}, Layt;-><init>()V

    sput-object v0, Layt$b;->a:Layt;

    return-void
.end method
