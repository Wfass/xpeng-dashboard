.class Laqr$a;
.super Ljava/lang/Object;
.source "AudioTypeControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laqr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Laqr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laqr;-><init>(Laqr$1;)V

    sput-object v0, Laqr$a;->a:Laqr;

    return-void
.end method
