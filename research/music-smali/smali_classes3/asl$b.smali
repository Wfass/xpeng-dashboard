.class Lasl$b;
.super Ljava/lang/Object;
.source "CodriverBluetoothModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lasl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lasl;

    invoke-direct {v0}, Lasl;-><init>()V

    sput-object v0, Lasl$b;->a:Lasl;

    return-void
.end method

.method static synthetic a()Lasl;
    .locals 1

    .line 24
    sget-object v0, Lasl$b;->a:Lasl;

    return-object v0
.end method
