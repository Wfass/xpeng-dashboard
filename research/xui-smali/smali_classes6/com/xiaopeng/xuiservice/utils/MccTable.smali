.class public final Lcom/xiaopeng/xuiservice/utils/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field static sTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    .line 87
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "gr"

    const/4 v4, 0x2

    const/16 v5, 0xca

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "nl"

    const/16 v5, 0xcc

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "be"

    const/16 v5, 0xce

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "fr"

    const/16 v5, 0xd0

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "mc"

    const/16 v5, 0xd4

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "ad"

    const/16 v5, 0xd5

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "es"

    const/16 v5, 0xd6

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "hu"

    const/16 v5, 0xd8

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "ba"

    const/16 v5, 0xda

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "hr"

    const/16 v5, 0xdb

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "rs"

    const/16 v5, 0xdc

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "it"

    const/16 v5, 0xde

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "va"

    const/16 v5, 0xe1

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "ro"

    const/16 v5, 0xe2

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "ch"

    const/16 v5, 0xe4

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "cz"

    const/16 v5, 0xe6

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "sk"

    const/16 v5, 0xe7

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "at"

    const/16 v5, 0xe8

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "gb"

    const/16 v5, 0xea

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "gb"

    const/16 v5, 0xeb

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "dk"

    const/16 v5, 0xee

    invoke-direct {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v3, "se"

    invoke-direct {v2, v1, v3, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "no"

    const/16 v3, 0xf2

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "fi"

    const/16 v3, 0xf4

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lt"

    const/16 v3, 0xf6

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lv"

    const/16 v3, 0xf7

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ee"

    const/16 v3, 0xf8

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ru"

    const/16 v3, 0xfa

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ua"

    const/16 v3, 0xff

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "by"

    const/16 v3, 0x101

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "md"

    const/16 v3, 0x103

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pl"

    const/16 v3, 0x104

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "de"

    const/16 v3, 0x106

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gi"

    const/16 v3, 0x10a

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pt"

    const/16 v3, 0x10c

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lu"

    const/16 v3, 0x10e

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ie"

    const/16 v3, 0x110

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "is"

    const/16 v3, 0x112

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "al"

    const/16 v3, 0x114

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mt"

    const/16 v3, 0x116

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cy"

    const/16 v3, 0x118

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ge"

    const/16 v3, 0x11a

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "am"

    const/16 v3, 0x11b

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bg"

    const/16 v3, 0x11c

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tr"

    const/16 v3, 0x11e

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "fo"

    const/16 v3, 0x120

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ge"

    const/16 v3, 0x121

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gl"

    const/16 v3, 0x122

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sm"

    const/16 v3, 0x124

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "si"

    const/16 v3, 0x125

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mk"

    const/16 v3, 0x126

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "li"

    const/16 v3, 0x127

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "me"

    const/16 v3, 0x129

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ca"

    const/4 v3, 0x3

    const/16 v5, 0x12e

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pm"

    const/16 v5, 0x134

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x136

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x137

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x138

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x139

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x13a

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x13b

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x13c

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pr"

    const/16 v5, 0x14a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "vi"

    const/16 v5, 0x14c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mx"

    const/16 v5, 0x14e

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "jm"

    const/16 v5, 0x152

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gp"

    const/16 v5, 0x154

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bb"

    const/16 v5, 0x156

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ag"

    const/16 v5, 0x158

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ky"

    const/16 v5, 0x15a

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "vg"

    const/16 v5, 0x15c

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bm"

    const/16 v5, 0x15e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gd"

    const/16 v5, 0x160

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ms"

    const/16 v5, 0x162

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kn"

    const/16 v5, 0x164

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lc"

    const/16 v5, 0x166

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "vc"

    const/16 v5, 0x168

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ai"

    const/16 v5, 0x16a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "aw"

    const/16 v5, 0x16b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bs"

    const/16 v5, 0x16c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ai"

    const/16 v5, 0x16d

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "dm"

    const/16 v5, 0x16e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cu"

    const/16 v5, 0x170

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "do"

    const/16 v5, 0x172

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ht"

    const/16 v5, 0x174

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tt"

    const/16 v5, 0x176

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tc"

    const/16 v5, 0x178

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "az"

    const/16 v5, 0x190

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kz"

    const/16 v5, 0x191

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bt"

    const/16 v5, 0x192

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v5, 0x194

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v5, 0x195

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v5, 0x196

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pk"

    const/16 v5, 0x19a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "af"

    const/16 v5, 0x19c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lk"

    const/16 v5, 0x19d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mm"

    const/16 v5, 0x19e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lb"

    const/16 v5, 0x19f

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "jo"

    const/16 v5, 0x1a0

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sy"

    const/16 v5, 0x1a1

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "iq"

    const/16 v5, 0x1a2

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kw"

    const/16 v5, 0x1a3

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sa"

    const/16 v5, 0x1a4

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "ye"

    const/16 v5, 0x1a5

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "om"

    const/16 v5, 0x1a6

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ps"

    const/16 v5, 0x1a7

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v5, 0x1a8

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "il"

    const/16 v5, 0x1a9

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bh"

    const/16 v5, 0x1aa

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "qa"

    const/16 v5, 0x1ab

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mn"

    const/16 v5, 0x1ac

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "np"

    const/16 v5, 0x1ad

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v5, 0x1ae

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v5, 0x1af

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ir"

    const/16 v5, 0x1b0

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "uz"

    const/16 v5, 0x1b2

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tj"

    const/16 v5, 0x1b4

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kg"

    const/16 v5, 0x1b5

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tm"

    const/16 v5, 0x1b6

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "jp"

    const/16 v5, 0x1b8

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "jp"

    const/16 v5, 0x1b9

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kr"

    const/16 v5, 0x1c2

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "vn"

    const/16 v5, 0x1c4

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "hk"

    const/16 v5, 0x1c6

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mo"

    const/16 v5, 0x1c7

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kh"

    const/16 v5, 0x1c8

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "la"

    const/16 v5, 0x1c9

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cn"

    const/16 v5, 0x1cc

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cn"

    const/16 v5, 0x1cd

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tw"

    const/16 v5, 0x1d2

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "kp"

    const/16 v5, 0x1d3

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bd"

    const/16 v5, 0x1d6

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mv"

    const/16 v5, 0x1d8

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "my"

    const/16 v5, 0x1f6

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "au"

    const/16 v5, 0x1f9

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "id"

    const/16 v5, 0x1fe

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tl"

    const/16 v5, 0x202

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ph"

    const/16 v5, 0x203

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "th"

    const/16 v5, 0x208

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sg"

    const/16 v5, 0x20d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bn"

    const/16 v5, 0x210

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "nz"

    const/16 v5, 0x212

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mp"

    const/16 v5, 0x216

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gu"

    const/16 v5, 0x217

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "nr"

    const/16 v5, 0x218

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pg"

    const/16 v5, 0x219

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "to"

    const/16 v5, 0x21b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sb"

    const/16 v5, 0x21c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "vu"

    const/16 v5, 0x21d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "fj"

    const/16 v5, 0x21e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "wf"

    const/16 v5, 0x21f

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "as"

    const/16 v5, 0x220

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ki"

    const/16 v5, 0x221

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "nc"

    const/16 v5, 0x222

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pf"

    const/16 v5, 0x223

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ck"

    const/16 v5, 0x224

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "ws"

    const/16 v5, 0x225

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "fm"

    const/16 v5, 0x226

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mh"

    const/16 v5, 0x227

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pw"

    const/16 v5, 0x228

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tv"

    const/16 v5, 0x229

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "nu"

    const/16 v5, 0x22b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "eg"

    const/16 v5, 0x25a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "dz"

    const/16 v5, 0x25b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ma"

    const/16 v5, 0x25c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tn"

    const/16 v5, 0x25d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ly"

    const/16 v5, 0x25e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gm"

    const/16 v5, 0x25f

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sn"

    const/16 v5, 0x260

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mr"

    const/16 v5, 0x261

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ml"

    const/16 v5, 0x262

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gn"

    const/16 v5, 0x263

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ci"

    const/16 v5, 0x264

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bf"

    const/16 v5, 0x265

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ne"

    const/16 v5, 0x266

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tg"

    const/16 v5, 0x267

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bj"

    const/16 v5, 0x268

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mu"

    const/16 v5, 0x269

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "lr"

    const/16 v5, 0x26a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sl"

    const/16 v5, 0x26b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gh"

    const/16 v5, 0x26c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ng"

    const/16 v5, 0x26d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "td"

    const/16 v5, 0x26e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cf"

    const/16 v5, 0x26f

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cm"

    const/16 v5, 0x270

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cv"

    const/16 v5, 0x271

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "st"

    const/16 v5, 0x272

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gq"

    const/16 v5, 0x273

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ga"

    const/16 v5, 0x274

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cg"

    const/16 v5, 0x275

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cd"

    const/16 v5, 0x276

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ao"

    const/16 v5, 0x277

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gw"

    const/16 v5, 0x278

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sc"

    const/16 v5, 0x279

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sd"

    const/16 v5, 0x27a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "rw"

    const/16 v5, 0x27b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "et"

    const/16 v5, 0x27c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "so"

    const/16 v5, 0x27d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "dj"

    const/16 v5, 0x27e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ke"

    const/16 v5, 0x27f

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "tz"

    const/16 v5, 0x280

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ug"

    const/16 v5, 0x281

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bi"

    const/16 v5, 0x282

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mz"

    const/16 v5, 0x283

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "zm"

    const/16 v5, 0x285

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mg"

    const/16 v5, 0x286

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "re"

    const/16 v5, 0x287

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "zw"

    const/16 v5, 0x288

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "na"

    const/16 v5, 0x289

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "mw"

    const/16 v5, 0x28a

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ls"

    const/16 v5, 0x28b

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bw"

    const/16 v5, 0x28c

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sz"

    const/16 v5, 0x28d

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "km"

    const/16 v5, 0x28e

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string/jumbo v2, "za"

    const/16 v5, 0x28f

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "er"

    const/16 v5, 0x291

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sh"

    const/16 v5, 0x292

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ss"

    const/16 v5, 0x293

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bz"

    const/16 v5, 0x2be

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gt"

    const/16 v5, 0x2c0

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sv"

    const/16 v5, 0x2c2

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "hn"

    const/16 v5, 0x2c4

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ni"

    const/16 v5, 0x2c6

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cr"

    const/16 v5, 0x2c8

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pa"

    const/16 v5, 0x2ca

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "pe"

    const/16 v5, 0x2cc

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ar"

    const/16 v5, 0x2d2

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "br"

    const/16 v5, 0x2d4

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "cl"

    const/16 v5, 0x2da

    invoke-direct {v1, v5, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "co"

    const/16 v5, 0x2dc

    invoke-direct {v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ve"

    const/16 v3, 0x2de

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "bo"

    const/16 v3, 0x2e0

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gy"

    const/16 v3, 0x2e2

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "ec"

    const/16 v3, 0x2e4

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "gf"

    const/16 v3, 0x2e6

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "py"

    const/16 v3, 0x2e8

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "sr"

    const/16 v3, 0x2ea

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "uy"

    const/16 v3, 0x2ec

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v2, "fk"

    const/16 v3, 0x2ee

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 329
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "mcc"    # I

    .line 61
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/MccTable;->entryForMcc(I)Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    move-result-object v0

    .line 63
    .local v0, "entry":Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 64
    const-string v1, ""

    return-object v1

    .line 66
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;->mIso:Ljava/lang/String;

    return-object v1
.end method

.method private static entryForMcc(I)Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;
    .locals 3
    .param p0, "mcc"    # I

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .line 46
    .local v0, "m":Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 48
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 49
    const/4 v2, 0x0

    return-object v2

    .line 51
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/utils/MccTable$MccEntry;

    return-object v2
.end method
