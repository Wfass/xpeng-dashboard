.class Lazb$a;
.super Ljava/lang/Object;
.source "NetRadioFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lazb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lazb;-><init>(Lazb$1;)V

    sput-object v0, Lazb$a;->a:Lazb;

    return-void
.end method
