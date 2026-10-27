.class Lafe$a;
.super Ljava/lang/Object;
.source "ObjectWriterCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/Class;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/invoke/MethodType;

.field final e:Ljava/lang/invoke/MethodType;

.field final f:Ljava/lang/invoke/MethodType;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    iput-object p1, p0, Lafe$a;->a:Ljava/lang/Class;

    .line 1165
    iput-object p2, p0, Lafe$a;->b:Ljava/lang/Class;

    .line 1166
    iput-object p3, p0, Lafe$a;->c:Ljava/lang/String;

    .line 1167
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p3

    iput-object p3, p0, Lafe$a;->d:Ljava/lang/invoke/MethodType;

    .line 1168
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p2

    iput-object p2, p0, Lafe$a;->e:Ljava/lang/invoke/MethodType;

    .line 1169
    const-class p2, Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    iput-object p1, p0, Lafe$a;->f:Ljava/lang/invoke/MethodType;

    return-void
.end method
