.class Lbus$a;
.super Ljava/lang/Object;
.source "SpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lbus;

    invoke-direct {v0}, Lbus;-><init>()V

    sput-object v0, Lbus$a;->a:Lbus;

    return-void
.end method

.method static synthetic a()Lbus;
    .locals 1

    .line 60
    sget-object v0, Lbus$a;->a:Lbus;

    return-object v0
.end method
