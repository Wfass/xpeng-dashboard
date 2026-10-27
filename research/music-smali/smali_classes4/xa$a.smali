.class Lxa$a;
.super Ljava/lang/Object;
.source "ObjectReaderCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/invoke/MethodType;

.field final c:Ljava/lang/invoke/MethodType;

.field final d:Ljava/lang/invoke/MethodType;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lxa$a;->a:Ljava/lang/Class;

    .line 98
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    iput-object v0, p0, Lxa$a;->b:Ljava/lang/invoke/MethodType;

    .line 99
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    iput-object p1, p0, Lxa$a;->c:Ljava/lang/invoke/MethodType;

    .line 100
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    iput-object p1, p0, Lxa$a;->d:Ljava/lang/invoke/MethodType;

    return-void
.end method
