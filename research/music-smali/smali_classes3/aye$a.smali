.class Laye$a;
.super Ljava/lang/Object;
.source "SongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Laye;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Laye;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laye;-><init>(Laye$1;)V

    sput-object v0, Laye$a;->a:Laye;

    return-void
.end method
